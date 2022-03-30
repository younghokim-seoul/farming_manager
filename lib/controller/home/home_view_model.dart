import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:fimber/fimber.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  final repository = locator.get<FarmingRepository>();
  //
  final Rx<WeatherResponse> _currentWeather = Rx(const WeatherResponse(
      weatherCode: "-1",
      weatherRainType: "N/A",
      weatherHumidity: "0",
      weatherTemp: "0",
      weatherRainPercent: "0",
      weatherWindSpeed: "0"));


  WeatherResponse get currentWeather => _currentWeather.value;

  @override
  void onInit() {
    Fimber.i(":::::::::HomeViewModel onInit " + repository.toString());
    getCurrentLocation();
    super.onInit();
  }

  Future<void> getCurrentLocation() async {
    final hasPermission = await _checkPermission();

    Fimber.i("::::hasPermission " + hasPermission.toString());
    if (!hasPermission) {
      return;
    }

    final position = await _geolocatorPlatform.getCurrentPosition();
    Fimber.i("::::position " + position.toString());
    final weatherInfo =
        await repository.getWeatherInfo(const WeatherRequest(nx: 56, ny: 124));

    weatherInfo.when(success: (response) {
      _currentWeather.value = response;
      Fimber.i(":::weatherInfo => " + response.toJson().toString());
    }, error: (error) {
      Fimber.e("[weatherInfo] Api Error -> $error");
      MessageUtil.showToast("날씨 정보를 불러오는데 실패하였습니다");
    });
  }

  Future<bool> _checkPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();

    Fimber.i("::::serviceEnabled " + serviceEnabled.toString());

    if (!serviceEnabled) {
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }
}
