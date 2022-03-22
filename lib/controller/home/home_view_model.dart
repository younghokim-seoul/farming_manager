import 'package:farming_manager/widgets/toast.dart';
import 'package:fimber/fimber.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  @override
  void onInit() {
    Fimber.i(":::::::::HomeViewModel onInit");
    _getCurrentLocation();
    super.onInit();
  }


  Future<void> _getCurrentLocation() async {
    final hasPermission = await _checkPermission();

    Fimber.i("::::hasPermission " + hasPermission.toString());
    if (!hasPermission) {
      return;
    }

    final position = await _geolocatorPlatform.getCurrentPosition();
    Fimber.i("::::position " + position.toString());

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
