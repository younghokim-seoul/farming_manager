import 'package:farming_manager/controller/home/home_binding.dart';
import 'package:farming_manager/controller/splash/splash_binding.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:farming_manager/screens/home.dart';
import 'package:farming_manager/screens/splash.dart';
import 'package:get/get.dart';
abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: Routes.HOME, page: () => const HomeScreen(), binding: HomeBinding()),
    ];
}