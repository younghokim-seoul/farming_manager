import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TeckSkillViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();


  static const _pageSize = 10;

  final Rx<PagingController<int, TeckResponse>> _pagingController =
  Rx(PagingController(firstPageKey: 1));

  PagingController<int, TeckResponse> get pagingController =>
      _pagingController.value;

  @override
  void onInit() {
    _pagingController.value.addPageRequestListener((pageKey) {
      _fetchTeckSkillItems(pageKey);
    });
    super.onInit();
  }

  void _fetchTeckSkillItems(int pageKey) async {
    final response = await repository.getTeckList(TeckListRequest(pageNo: pageKey));
    response.when(success: (response) {
      final isLastPage = response.length < _pageSize;
      logger.i("isLastPage>>>>>>>>>" + isLastPage.toString());
      if (isLastPage) {
        _pagingController.value.appendLastPage(response);
      } else {
        final nextKey = pageKey += 1;
        _pagingController.value.appendPage(response, nextKey);
      }
    }, error: (error) {
      logger.e("[_fetchTeckSkillItems] Api Error -> $error");
      _pagingController.value.error = error;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
