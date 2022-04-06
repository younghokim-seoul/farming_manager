import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();
  final scrollController = ScrollController().obs;
  final _vedioCategoryItems = <VedioCategoryResponse>[].obs;
  List<VedioCategoryResponse> get vedioCategoryItems => _vedioCategoryItems;



  @override
  void onInit() {
    _fetchVedioCategory();
    super.onInit();
  }

  void _fetchVedioCategory() async {
    final response = await repository.getVideoCategory();
    response.when(success: (response) {
      _vedioCategoryItems.value = response;
    }, error: (error) {
      logger.e("[_fetchVedioCategory] Api Error -> $error");
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
