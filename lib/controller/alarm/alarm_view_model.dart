import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/alarm_save_request.dart';
import 'package:farming_manager/data/request/dstr_prevnt_list_request.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/utils/file_download_manager.dart';
import 'package:farming_manager/utils/local_preference_manager.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AlarmViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();

  final _focusedDay = Rxn<DateTime>();

  DateTime? get focusedDay => _focusedDay.value;

  void setFocusDay(DateTime dateTime) => _focusedDay.value = dateTime;

  void saveAlarm(String title, String content, String sendTime) async {
    logger.i(":::테스트 함 해봅시다...");

    if (focusedDay == null){
      MessageUtil.showToast("날짜를 선택해주세요");
      return;
    }

    final token = await LocalPreferenceManager.getToken();
    final request = AlarmSaveRequest(token: token!, title: title, content: content, sendDate: convertToString(focusedDay!), sendTime: sendTime);
    final response = await repository.insertAlerm(request);

    response.when(success: (response) {
      logger.i(response);
      MessageUtil.showToast("저장 되었습니다.");
    }, error: (error) {
      MessageUtil.showToast("저장에 실패하였습니다.");
      logger.e("[saveAlarm] Api Error -> $error");
    });
  }
}
