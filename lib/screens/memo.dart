// ignore_for_file: unnecessary_const

import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/memo/memo_view_model.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MemoScreen extends GetView<MemoViewModel> {
  //
  // // Map<DateTime, List<EventsModel>> _events;
  // DateTime _selectedDay;

  const MemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 230, 178),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(0, 109, 131, 12),
            title: const FarmingText(text: "메모장", size: 16)),
        body: SafeArea(
            child: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: Get.width * 0.03),
                  Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color.fromARGB(255, 226, 225, 225),
                          border: Border.all(color: AppColors.black)),
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: FarmingText(text: "등록날짜", size: 16.sp))),
                  Container(width: Get.width * 0.05),
                  Obx(() => Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: const Color.fromARGB(255, 226, 225, 225),
                              border: Border.all(color: AppColors.black)),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: FarmingText(
                                text: controller.focusedDay, size: 16.sp),
                          )))),
                  SizedBox(width: Get.width * 0.03)
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.03),
                  Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color.fromARGB(255, 226, 225, 225),
                          border: Border.all(color: AppColors.black)),
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: FarmingText(text: "제목", size: 16.sp))),
                  Container(width: Get.width * 0.05),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.multiline,
                    style: const TextStyle(fontSize: 20),
                    controller: controller.titleCtr.value,
                    decoration: const InputDecoration(
                      hintText: "",
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 225, 225),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      isDense: true,
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  )),
                  SizedBox(width: Get.width * 0.03)
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: Get.width * 0.03),
                  Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color.fromARGB(255, 226, 225, 225),
                          border: Border.all(color: AppColors.black)),
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: FarmingText(text: "내용", size: 16.sp))),
                  Container(width: Get.width * 0.05),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 20,
                    minLines: 13,
                    controller: controller.contentCtr.value,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      hintText: "",
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 225, 225),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      isDense: true,
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  )),
                  SizedBox(width: Get.width * 0.03)
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: Get.width * 0.03),
                  SizedBox(
                    width: Get.width * 0.3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 216, 200, 155),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        if (controller.titleCtr.value.text.isNotEmpty &&
                            controller.contentCtr.value.text.isNotEmpty) {
                          controller.saveMemo(controller.titleCtr.value.text, controller.contentCtr.value.text);
                        } else {
                          MessageUtil.showToast("양식을 완성해주세요");
                        }
                      },
                      child: const Text('저장'),
                    ),
                  ),
                  Container(width: Get.width * 0.05),
                  Visibility(
                    visible: controller.isMemoWrite.value,
                    child: SizedBox(
                      width: Get.width * 0.3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 216, 200, 155),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          controller.deleteMemo(controller.focusItem?.memoNo ?? -1);
                        },
                        child: const Text('삭제'),
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width * 0.3)
                ],
              )
            ],
          )
        ])));
  }
}
