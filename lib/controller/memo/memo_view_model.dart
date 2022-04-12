import 'package:farming_manager/data/repository/farming_repository.dart';
import 'package:farming_manager/data/request/memo_delete_request.dart';
import 'package:farming_manager/data/request/memo_save_request.dart';
import 'package:farming_manager/data/response/memo_list_response.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum MemoRequestType { save, delete }

class MemoViewModel extends GetxController {
  final repository = locator.get<FarmingRepository>();


  final _focusedDay = RxString(Get.arguments['EXTRA_DATE']);
  String get focusedDay => _focusedDay.value;

  final _focusItem = Rxn<MemoListResponse>(Get.arguments['EXTRA_ITEM']);
  MemoListResponse? get focusItem => _focusItem.value;

  var titleCtr = TextEditingController().obs;
  var contentCtr = TextEditingController().obs;

  final isMemoWrite = false.obs;



  @override
  void onInit() {
    super.onInit();
    isMemoWrite.value = focusItem != null;
    titleCtr.value.text = focusItem?.title ?? "";
    contentCtr.value.text = focusItem?.content ?? "";
  }

  Future<void> deleteMemo(int memoNo) async {

    final request = MemoDeleteRequest(memoNo: memoNo);
    final response = await repository.deleteMemo(request);

    response.when(success: (response) {
      logger.i(response);
      Get.back(result: MemoRequestType.delete);
    }, error: (error) {
      logger.e("[deleteMemo] Api Error -> $error");
    });
  }

  Future<void> saveMemo(String title, String content) async {
    var reg = RegExp(r"^[가-힣ㄱ-ㅎㅏ-ㅣ]*$");
    String filter = "";
    for (int i = 0; i < focusedDay.length; i++) {
      if (reg.firstMatch(focusedDay.substring(i, i + 1)) == null) {
        filter += focusedDay.substring(i, i + 1);
      }
    }
    final split = filter.split(" ");

    int year = int.parse(split[0]);
    int month = int.parse(split[1]);
    int day = int.parse(split[2]);


    final request = MemoSaveRequest(wYear: year, wMonth: month, wDay: day, title: title, content: content);
    final response = await repository.saveMemo(request);


    response.when(success: (response) {
      logger.i(response);
      Get.back(result: MemoRequestType.save);
    }, error: (error) {
      logger.e("[saveMemo] Api Error -> $error");
    });

  }
}
