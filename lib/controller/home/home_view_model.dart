import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/weather_request.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:fimber/fimber.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  final repository = locator.get<FarmingRepository>();

  @override
  void onInit() {
    Fimber.i(":::::::::HomeViewModel onInit " + repository.toString());
    // _getCurrentLocation();
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
    final weatherInfo = await repository.getWeatherInfo(WeatherRequest(nx: 56, ny: 124));

    weatherInfo.when(success: (response){
      Fimber.i(":::weatherInfo => " + response.toJson().toString());
    },error : (error){
      Fimber.e("[weatherInfo] Api Error -> $error");
    });



  }

  Future<bool> _checkPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();

    Fimber.i("::::serviceEnabled " + serviceEnabled.toString());

    if(!serviceEnabled){
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
