import 'package:farming_manager/controller/memo/memo_view_model.dart';
import 'package:get/get.dart';

class MemoViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MemoViewModel());
  }
}
