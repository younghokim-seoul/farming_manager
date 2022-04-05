import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/menual_list_request.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:get/get.dart';

class ManualViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();

  var loading = true.obs;

  final _categoryList = <MenualCategoryResponse>[].obs;

  List<MenualCategoryResponse> get categoryList => _categoryList;

  @override
  void onInit() {
    logger.i(":::::::::ManualViewModel onInit");
    _fetchMenualCategory();
    super.onInit();
  }

  void _fetchMenualCategory() async {
    final response = await repository.getMenualCategory();

    response.when(success: (response) {
      logger.i(response);
      _categoryList.value = response;
      loading.value = false;
    }, error: (error) {
      logger.e("[_fetchMenualCategory] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }


  void fetchSearchMenualList(String kidofcomdtySeCode) async {
    final response = await repository.getMenualList(MenualListRequest(kidofcomdtySeCode: kidofcomdtySeCode));

    response.when(success: (response) {
       logger.i(response);
    }, error: (error) {
      logger.e("[fetchSearchMenualList] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }



}
