import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KindInformationViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  final scrollController = ScrollController().obs;

  var loading = true.obs;

  final _categoryList = <KindCategoryResponse>[].obs;

  List<KindCategoryResponse> get categoryList => _categoryList;

  final _categoryDetalList = <KindDetailResponse>[].obs;

  List<KindDetailResponse> get categoryDetalList => _categoryDetalList;

  final _selectedItem = Rxn<KindDetailResponse>();

  KindDetailResponse? get selectedItem => _selectedItem.value;

  var pageCursor = 1;
  var queryCursor = "";
  var loadMore = false;

  @override
  void onInit() {
    logger.i(":::::::::KindInformation onInit");
    _fetchKindCategory();
    _addScrollListener();
    super.onInit();
  }

  void _addScrollListener() {
    scrollController.value.addListener(() {
      if (scrollController.value.position.pixels ==
              scrollController.value.position.maxScrollExtent &&
          !loadMore) {
        fetchKindDetail(queryCursor);
      }
    });
  }

  void setSelectedItem(KindDetailResponse item) {
    _selectedItem.value = item;
  }

  void _fetchKindCategory() async {
    final response = await repository.getKindCategory();

    response.when(success: (response) {
      _categoryList.value = response;
      loading.value = false;
    }, error: (error) {
      logger.e("[_fetchKindCategory] Api Error -> $error");
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }

  void fetchKindDetail(String query) async {
    if (queryCursor != query) {
      logger.d("::::: 작물 타입 변화로 인한 cursour 초기화");
      _categoryDetalList.value = [];
      queryCursor = query;
      pageCursor = 1;
      loadMore = false;
    }

    loadMore = true;
    final response = await repository.getKindDetail(KindDetailRequest(categoryCode: query, pageNo: pageCursor));
    response.when(success: (response) {
      _categoryDetalList.addAll(response);
      pageCursor += 1;
      loadMore = false;
    }, error: (error) {
      logger.e("[fetchKindDetail] Api Error -> $error");
      loadMore = false;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
