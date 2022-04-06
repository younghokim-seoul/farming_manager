import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisasterPrevntViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  final scrollController = ScrollController().obs;

  final _disasterPrevntList = <DstrPrevntListResponse>[].obs;

  List<DstrPrevntListResponse> get disasterPrevntList => _disasterPrevntList;

  var pageNo = 1;
  var loadMore = false;

  @override
  void onInit() {
    _fetchDstrPrevntItems();
    _addScrollListener();
    super.onInit();
  }

  void _addScrollListener() {
    scrollController.value.addListener(() {
      if (scrollController.value.position.pixels ==
          scrollController.value.position.maxScrollExtent &&
          !loadMore) {
        _fetchDstrPrevntItems();
      }
    });
  }

  void _fetchDstrPrevntItems() async {
    loadMore = true;
    final response = await repository.getDstrPrevntList(DstrPrevntListRequest(pageNo: pageNo));
    response.when(success: (response) {
      logger.i(response);
      _disasterPrevntList.addAll(response);
      pageNo += 1;
      loadMore = false;
    }, error: (error) {
      logger.e("[_fetchDstrPrevntItems] Api Error -> $error");
      loadMore = false;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
