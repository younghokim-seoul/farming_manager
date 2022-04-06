import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/teck_detail_request.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/response/teck_detail_response.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TeckSkillDetailViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  final _contentNo = RxString(Get.arguments['EXTRA_CNT_NO']);

  String get contentNo => _contentNo.value;

  final _selectedDetailItem = Rxn<TeckDetailResponse>();

  TeckDetailResponse? get selectedDetailItem => _selectedDetailItem.value;

  @override
  void onInit() {
    _fetchTeckSkillDetail(contentNo);
    super.onInit();
  }

  void _fetchTeckSkillDetail(String cntntsNo) async {
    final response = await repository.getTeckDetail(TeckDetailRequest(cntntsNo: cntntsNo));
    response.when(success: (response) {
      _selectedDetailItem.value = response.first;
    }, error: (error) {
      logger.e("[_fetchTeckSkillDetail] Api Error -> $error");
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
