import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class DisasterPrevntViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();



  static const _pageSize = 10;

  final Rx<PagingController<int, DstrPrevntListResponse>> _pagingController =
      Rx(PagingController(firstPageKey: 1));

  PagingController<int, DstrPrevntListResponse> get pagingController =>
      _pagingController.value;

  @override
  void onInit() {
    _pagingController.value.addPageRequestListener((pageKey) {
      _fetchDstrPrevntItems(pageKey);
    });
    super.onInit();
  }

  void _fetchDstrPrevntItems(int pageKey) async {
    final response = await repository.getDstrPrevntList(DstrPrevntListRequest(pageNo: pageKey));
    response.when(success: (response) {
      logger.i(response);
      final isLastPage = response.length < _pageSize;
      if (isLastPage) {
        _pagingController.value.appendLastPage(response);
      } else {
        final nextKey = pageKey += 1;
        _pagingController.value.appendPage(response, nextKey);
      }
    }, error: (error) {
      logger.e("[_fetchDstrPrevntItems] Api Error -> $error");
      // loadMore = false;
      _pagingController.value.error = error;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }

  @override
  void onClose() {
    _pagingController.value.dispose();
    super.onClose();
  }
}
