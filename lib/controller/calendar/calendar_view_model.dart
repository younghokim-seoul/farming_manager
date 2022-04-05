
import 'package:farming_manager/main.dart';
import 'package:get/get.dart';

class CalendarViewModel extends GetxController {
  final _focusedDay = DateTime.now().obs;

  DateTime get focusedDay => _focusedDay.value;

  final Rx<DateTime?>_selectedDay = Rx(null);
  DateTime? get selectedDay => _selectedDay.value;

  @override
  void onInit() {
    logger.i(":::::::::CalendarViewModel onInit");
    super.onInit();
  }

  void setFocusedDay(DateTime focusedDay) {
    _focusedDay.value = focusedDay;
  }

  void setSelectedDay(DateTime selectedDay) {
    _selectedDay.value = selectedDay;
  }
}
