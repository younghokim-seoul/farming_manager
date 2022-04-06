import 'package:farming_manager/controller/dstrprevnt/disaster_prevnt_view_model.dart';
import 'package:get/get.dart';

class DisasterPrevntBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DisasterPrevntViewModel());
  }
}
