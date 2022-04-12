import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:farming_manager/controller/weeklyfarm/week_farm_view_model.dart';
import 'package:farming_manager/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';

class WeeklyFarmScreen extends GetView<WeeklyFarmViewModel> {
  const WeeklyFarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const FarmingText(text: "주간 농사정보", size: 16)),
        body: Obx(() =>  ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = controller.weeklyfarmList[index];
                    return InkWell(
                        onTap: () {
                          //다운로드 코드.
                          logger.i(item);
                          controller.requestDownload(item);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FarmingText(text: item.fileName, size: 16.sp),
                              SizedBox(height: 10.h),
                              Text(item.downUrl,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ))
                            ],
                          ),
                        ));
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: controller.weeklyfarmList.length)),
        );
  }
}
