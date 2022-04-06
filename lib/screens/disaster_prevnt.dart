import 'package:farming_manager/controller/dstrprevnt/disaster_prevnt_view_model.dart';
import 'package:farming_manager/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';

class DisasterPrevntScreen extends GetView<DisasterPrevntViewModel> {
  const DisasterPrevntScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "재해 예방 정보", size: 16)),
      body: Obx(() => ListView.separated(
          shrinkWrap: true,
          controller: controller.scrollController.value,
          itemBuilder: (context, index) {
            final item = controller.disasterPrevntList[index];

            if (index == controller.disasterPrevntList.length -1) {
              return const CupertinoActivityIndicator();
            }

            return InkWell(
                onTap: () {
                  //다운로드 코드.
                  logger.i(item);
                  // controller.requestDownload(item);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FarmingText(text: item.cntntsSj, size: 16.sp),
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
          itemCount: controller.disasterPrevntList.length)),
    );
  }
}
