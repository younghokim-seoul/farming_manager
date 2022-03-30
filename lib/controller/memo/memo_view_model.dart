import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

class MemoViewModel extends GetxController {
  final _focusedDay = RxString(Get.arguments['EXTRA_DATE']);
  String get focusedDay => _focusedDay.value;

  @override
  void onInit() {
    Fimber.i(":::::::::MemoViewModel onInit");
    super.onInit();
  }
}
