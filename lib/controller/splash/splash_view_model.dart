import 'package:farming_manager/main.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {

  @override
  void onInit() {
    logger.i(":::::::::SplashViewModel onInit ");
    _setInitialScreen();
    super.onInit();
  }


  @override
  void onReady() {

  }

  _setInitialScreen() async {
    logger.d(":::::::::_setInitialScreen");
    //다음화면으로 이동하면서 기존에 stack을 모두 종료한다.
     Future.delayed(const Duration(seconds: 3),() =>  Get.offAllNamed(Routes.HOME));
  }
}
