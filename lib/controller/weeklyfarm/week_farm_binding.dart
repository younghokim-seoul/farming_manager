import 'package:farming_manager/controller/weeklyfarm/week_farm_view_model.dart';
import 'package:get/get.dart';

class WeeklyFarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeeklyFarmViewModel());
  }
}
