import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/teck_list_request.dart';
import 'package:farming_manager/data/response/teck_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TeckSkillViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();
  final scrollController = ScrollController().obs;
  final _teckSkillList = <TeckResponse>[].obs;
  List<TeckResponse> get teckSkillList => _teckSkillList;

  var pageNo = 1;
  var loadMore = false;

  @override
  void onInit() {
    _fetchTeckSkillItems();
    _addScrollListener();
    super.onInit();
  }

  void _addScrollListener() {
    scrollController.value.addListener(() {
      if (scrollController.value.position.pixels ==
          scrollController.value.position.maxScrollExtent &&
          !loadMore) {
        _fetchTeckSkillItems();
      }
    });
  }

  void _fetchTeckSkillItems() async {
    loadMore = true;
    final response = await repository.getTeckList(TeckListRequest(pageNo: pageNo));
    response.when(success: (response) {
      pageNo += 1;
      _teckSkillList.addAll(response);
      loadMore = false;
    }, error: (error) {
      logger.e("[_fetchTeckSkillItems] Api Error -> $error");
      loadMore = false;
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }
}
