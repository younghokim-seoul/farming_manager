import 'package:farming_manager/controller/splash/splash_view_model.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashViewModel());
  }
}
