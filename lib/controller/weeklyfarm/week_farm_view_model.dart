import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:get/get.dart';

class WeeklyFarmViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();

  @override
  void onInit() {
    logger.i(":::::::::WeekFarmViewModel onInit");
    super.onInit();
  }

}
