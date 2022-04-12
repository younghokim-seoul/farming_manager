import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/response/weekly_farm_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/utils/file_download_manager.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';

class WeeklyFarmViewModel extends GetxController {

  final repository = locator.get<FarmingRepository>();
  final fileManager = locator.get<FileDownLoadManager>();

  final _weeklyfarmList = <WeeklyFarmResponse>[].obs;
  List<WeeklyFarmResponse> get weeklyfarmList => _weeklyfarmList;


  @override
  void onInit() {
    fileManager.init();
    fileManager.addDownloadStateCallback(callback: (status) {
      if(status.value == DownloadTaskStatus.enqueued.value){
        MessageUtil.showToast(AppStrings.downloadStart);
      }

      if(status.value == DownloadTaskStatus.complete.value){
        MessageUtil.showToast(AppStrings.downloadComplete);
      }

      if(status.value == DownloadTaskStatus.failed.value){
        MessageUtil.showToast(AppStrings.downloadFail);
      }
    });
    _fetchWeeklyFarmItems();
    super.onInit();
  }

  void requestDownload(WeeklyFarmResponse task) async {
    fileManager.requestDownLoad(task.downUrl, task.fileName.split(".")[0]);
  }

  void _fetchWeeklyFarmItems() async {
    final response = await repository.getWeekFarmList();
    response.when(success: (response) {
      logger.i(response);
      _weeklyfarmList.value = response;
    }, error: (error) {
      logger.e("[_fetchWeeklyFarmItems] Api Error -> $error");
      MessageUtil.showToast(AppStrings.httpFail);
    });
  }

}
