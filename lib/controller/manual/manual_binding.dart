import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:get/get.dart';

class ManualBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualViewModel());
  }
}
