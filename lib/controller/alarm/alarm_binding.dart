import 'package:farming_manager/controller/alarm/alarm_view_model.dart';
import 'package:get/get.dart';

class AlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlarmViewModel());
  }
}
