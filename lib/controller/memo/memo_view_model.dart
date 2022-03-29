import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

class MemoViewModel extends GetxController {
  final _focusedDay = DateTime.now().obs;

  DateTime get focusedDay => _focusedDay.value;

  final Rx<DateTime?> _selectedDay = Rx(null);
  DateTime? get selectedDay => _selectedDay.value;

  @override
  void onInit() {
    Fimber.i(":::::::::MemoViewModel onInit");
    super.onInit();
  }

  void setFocusedDay(DateTime focusedDay) {
    _focusedDay.value = focusedDay;
  }

  void setSelectedDay(DateTime selectedDay) {
    _selectedDay.value = selectedDay;
  }
}
