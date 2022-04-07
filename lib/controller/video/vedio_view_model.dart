import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/vedio_list_request.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VideoViewModel extends GetxController {
  static const _pageSize = 10;

  final repository = locator.get<FarmingRepository>();

  var loading = true.obs;

  final _vedioCategoryItems = <VedioCategoryResponse>[].obs;
  List<VedioCategoryResponse> get vedioCategoryItems => _vedioCategoryItems;

  final Rx<PagingController<int, VedioListResponse>> _pagingController = Rx(PagingController(firstPageKey: 1));

  PagingController<int, VedioListResponse> get pagingController => _pagingController.value;

  var pageCursor = 1;
  var queryCursor = "";



  @override
  void onInit() {
    _fetchVedioCategory();
    _pagingController.value.addPageRequestListener((pageKey) {
      if(queryCursor.isNotEmpty){
        pageCursor = pageKey;
        fetchVedioDetail(queryCursor);
      }
    });
    super.onInit();
  }

  void _fetchVedioCategory() async {
    final response = await repository.getVideoCategory();
    response.when(success: (response) {
      _vedioCategoryItems.value = response;
      loading.value = false;
    }, error: (error) {
      logger.e("[_fetchVedioCategory] Api Error -> $error");
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }

  void fetchVedioDetail(String query) async {
    if (queryCursor != query) {
      logger.d("::::: 비디오 변화로 인한 cursour 초기화");
      queryCursor = query;
      pageCursor = 1;
      _pagingController.value.refresh();
    }

    final response = await repository.getVideoList(VedioListRequest(categoryCode: queryCursor, pageNo: pageCursor));
    response.when(success: (response) {
      final isLastPage = response.length < _pageSize;
      if (isLastPage) {
        _pagingController.value.appendLastPage(response);
      } else {
        final nextKey = pageCursor += 1;
        _pagingController.value.appendPage(response, nextKey);
      }
    }, error: (error) {
      logger.e("[fetchVedioDetail] Api Error -> $error");
      _pagingController.value.error = error;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
