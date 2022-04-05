import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/response/weekly_farm_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:get/get.dart';

class WeeklyFarmViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();

  final _weeklyfarmList = <WeeklyFarmResponse>[].obs;
  List<WeeklyFarmResponse> get weeklyfarmList => _weeklyfarmList;


  @override
  void onInit() {
    logger.i(":::::::::WeekFarmViewModel onInit");
    _fetchWeeklyFarmItems();
    super.onInit();
  }

  void _fetchWeeklyFarmItems() async {
    final response = await repository.getWeekFarmList();
    response.when(success: (response) {
      logger.i(response);
      _weeklyfarmList.value = response;
    }, error: (error) {
      logger.e("[_fetchWeeklyFarmItems] Api Error -> $error");
      MessageUtil.showToast("정보를 불러오는데 실패하였습니다");
    });
  }

}
