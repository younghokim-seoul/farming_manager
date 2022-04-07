import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/kind_detail_request.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class KindInformationViewModel extends GetxController {
  static const _pageSize = 20;

  final repository = locator.get<FarmingRepository>();

  final Rx<PagingController<int, KindDetailResponse>> _pagingController =
      Rx(PagingController(firstPageKey: 1));

  PagingController<int, KindDetailResponse> get pagingController => _pagingController.value;

  var loading = true.obs;

  final _categoryList = <KindCategoryResponse>[].obs;

  List<KindCategoryResponse> get categoryList => _categoryList;


  final _selectedItem = Rxn<KindDetailResponse>();

  KindDetailResponse? get selectedItem => _selectedItem.value;

  var pageCursor = 1;
  var queryCursor = "";


  @override
  void onInit() {
    logger.i(":::::::::KindInformation onInit");
    _fetchKindCategory();
    _pagingController.value.addPageRequestListener((pageKey) {
      if(queryCursor.isNotEmpty){
        pageCursor = pageKey;
        fetchKindDetail(queryCursor);
      }
    });

    super.onInit();
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
      queryCursor = query;
      pageCursor = 1;
      _pagingController.value.refresh();
    }

    final response = await repository.getKindDetail(KindDetailRequest(categoryCode: queryCursor, pageNo: pageCursor));
    response.when(success: (response) {
      final isLastPage = response.length < _pageSize;
      if (isLastPage) {
        _pagingController.value.appendLastPage(response);
      } else {
        final nextKey = pageCursor += 1;
        _pagingController.value.appendPage(response, nextKey);
      }
    }, error: (error) {
      logger.e("[fetchKindDetail] Api Error -> $error");
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
