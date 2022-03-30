// ignore_for_file: unnecessary_const

import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/memo/memo_view_model.dart';
import 'package:farming_manager/widgets/farming_text.dart';
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
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 55,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      side: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    color: const Color.fromARGB(255, 226, 225, 225),
                    elevation: 5.0,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '등록날짜',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Obx(() => Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 225, 225),
                            border: Border.all(color: AppColors.black)),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: FarmingText(
                              text: controller.focusedDay, size: 14.sp),
                        )))),
                SizedBox(width: Get.width / 15)
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 55,
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: const BorderSide(
                          width: 1.0,
                        ),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 226, 225, 225),
                      elevation: 5.0,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '제목',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 230,
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: '  ',
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
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      side: const BorderSide(
                        width: 1.0,
                      ),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    color: const Color.fromARGB(255, 226, 225, 225),
                    elevation: 5.0,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '내용',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 230,
                  width: 230,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 20,
                    minLines: 13,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: '  ',
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 225, 225),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      isDense: true,
                      border: OutlineInputBorder(
                        gapPadding: 10,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                  child: Container(),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 216, 200, 155),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('저장'),
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: Container(),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('삭제'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 216, 200, 155),
                      textStyle: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
