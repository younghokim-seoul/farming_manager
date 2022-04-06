import 'package:farming_manager/controller/teck/teck_skill_detail_view_model.dart';
import 'package:farming_manager/controller/video/vedio_view_model.dart';
import 'package:get/get.dart';

class VedioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoViewModel());
  }
}
