import 'package:farming_manager/controller/teck/teck_skill_view_model.dart';
import 'package:get/get.dart';

class TeckSkillBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TeckSkillViewModel());
  }
}
