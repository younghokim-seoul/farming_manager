
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:get/get.dart';



class MemoViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();

  final _focusedDay = RxString(Get.arguments['EXTRA_DATE']);
  String get focusedDay => _focusedDay.value;

  @override
  void onInit() {
    super.onInit();
  }
}
