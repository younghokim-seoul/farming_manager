import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class KindInformationViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  var loading = true.obs;

  final _categoryList =  <KindCategoryResponse>[].obs;
  List<KindCategoryResponse> get categoryList => _categoryList;

  @override
  void onInit() {
    Fimber.i(":::::::::KindInformation onInit");
    _fetchKindCategory();
    super.onInit();
  }

  void _fetchKindCategory() async {
    final response = await repository.getKindCategory();

    response.when(success: (response) {
      _categoryList.value = response;
      loading.value = false;
      Fimber.i(":::categoryList => " + _categoryList.toJson().toString());
    }, error: (error) {
      Fimber.e("[_fetchKindCategory] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }
}
