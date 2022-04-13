// ignore_for_file: unnecessary_const

import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/constants/strings.dart';
import 'package:farming_manager/controller/alarm/alarm_view_model.dart';
import 'package:farming_manager/controller/memo/memo_view_model.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:farming_manager/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlarmScreen extends GetView<AlarmViewModel> {
  AlarmScreen({Key? key}) : super(key: key);

  var titleEditingController = TextEditingController();
  var contentEditingController = TextEditingController();
  var timeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 230, 178),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(0, 109, 131, 12),
            title: const FarmingText(text: "미리 알림", size: 16)),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5, top: 20),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.03),
                      Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.2,
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: FarmingText(text: "제목", size: 16.sp))),
                      Container(width: Get.width * 0.01),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.multiline,
                        style: const TextStyle(fontSize: 20),
                        controller: titleEditingController,
                        decoration: const InputDecoration(
                          hintText: "",
                          filled: true,
                          fillColor: Color.fromARGB(255, 226, 225, 225),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
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
                          width: Get.width * 0.2,
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: FarmingText(text: "내용", size: 16.sp))),
                      Container(width: Get.width * 0.01),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.multiline,
                        style: const TextStyle(fontSize: 20),
                        controller: contentEditingController,
                        decoration: const InputDecoration(
                          hintText: "",
                          filled: true,
                          fillColor: Color.fromARGB(255, 226, 225, 225),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
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
                    children: [
                      SizedBox(width: Get.width * 0.03),
                      Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.2,
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: FarmingText(text: "날짜", size: 16.sp))),
                      Container(width: Get.width * 0.01),
                      Expanded(
                          child: InkWell(
                              onTap: () {
                                Future<DateTime?> selectedDate = showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(
                                        DateTime.now().year,
                                        DateTime.now().month - 3,
                                        DateTime.now().day),
                                    lastDate: DateTime(
                                        DateTime.now().year,
                                        DateTime.now().month + 3,
                                        DateTime.now().day),
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData.light(),
                                        child: child!,
                                      );
                                    });
                                selectedDate.then((value) {
                                  if (value != null) {
                                    controller.setFocusDay(value);
                                  }
                                });
                              },
                              child: Obx(() => Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                        color: const Color.fromARGB(
                                            255, 226, 225, 225),
                                        border:
                                            Border.all(color: AppColors.black)),
                                    child: Container(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FarmingText(
                                            text: controller.focusedDay != null
                                                ? dataTimeToString(
                                                    controller.focusedDay!)
                                                : "",
                                            size: 16.sp)),
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
                          width: Get.width * 0.2,
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: FarmingText(text: "시간", size: 16.sp))),
                      Container(width: Get.width * 0.01),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 20),
                        controller: timeEditingController,
                        decoration: const InputDecoration(
                          hintText: "",
                          filled: true,
                          fillColor: Color.fromARGB(255, 226, 225, 225),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
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
                    children: [
                      SizedBox(width: Get.width * 0.03),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 216, 200, 155),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () async {},
                          child: const Text('설정'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: Get.width,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black, width: 1.w),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FarmingText(text: AppStrings.alarmTitle, size: 16.sp),
                    SizedBox(height: 10.h),
                    FarmingText(text: AppStrings.alarmTip1, size: 16.sp),
                    SizedBox(height: 10.h),
                    FarmingText(text: AppStrings.alarmTip2, size: 16.sp),
                    SizedBox(height: 10.h),
                    FarmingText(text: AppStrings.alarmTip3, size: 16.sp),
                    SizedBox(height: 10.h),
                    FarmingText(text: AppStrings.alarmTip4, size: 16.sp),
                    SizedBox(height: 10.h),
                  ],
                )),
          ],
        ))));
  }
}
