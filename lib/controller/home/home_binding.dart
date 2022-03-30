import 'package:farming_manager/controller/home/home_view_model.dart';
import 'package:farming_manager/controller/splash/splash_view_model.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}
