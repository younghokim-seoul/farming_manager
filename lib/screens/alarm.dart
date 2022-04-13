// ignore_for_file: unnecessary_const

import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/alarm/alarm_view_model.dart';
import 'package:farming_manager/controller/memo/memo_view_model.dart';
import 'package:farming_manager/main.dart';
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
                  controller: titleEditingController,
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
                  controller: contentEditingController,
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
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Future<DateTime?> selectedDate = showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(DateTime.now().year,
                                  DateTime.now().month - 3, DateTime.now().day),
                              lastDate: DateTime(DateTime.now().year,
                                  DateTime.now().month + 3, DateTime.now().day),
                              builder: (BuildContext context, Widget? child) {
                                return Theme(
                                  data: ThemeData.light(),
                                  child: child!,
                                );
                              });
                          selectedDate.then((value) => logger.i(value));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: const Color.fromARGB(255, 226, 225, 225),
                                border: Border.all(color: AppColors.black)),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: FarmingText(text: "", size: 16.sp),
                            )))),
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
            )
          ],
        ))));
  }
}
