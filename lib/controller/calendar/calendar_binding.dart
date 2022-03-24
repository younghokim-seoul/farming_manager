import 'package:farming_manager/controller/calendar/calendar_view_model.dart';
import 'package:get/get.dart';

class CalendarViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CalendarViewModel());
  }
}
