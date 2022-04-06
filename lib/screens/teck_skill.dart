import 'package:farming_manager/controller/teck/teck_skill_view_model.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';

class TeckSkillScreen extends GetView<TeckSkillViewModel> {
  const TeckSkillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "현장 애로 기술 사례", size: 16)),
      body: Obx(() => ListView.separated(
          controller: controller.scrollController.value,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = controller.teckSkillList[index];

            if (index == controller.teckSkillList.length -1) {
              return const CupertinoActivityIndicator();
            }

            return InkWell(
                onTap: () {
                  //다운로드 코드.
                  logger.i(item);
                  logger.i(item.cntntsNo);
                  Get.toNamed(Routes.TECK_DETAIL, arguments: {"EXTRA_CNT_NO": item.cntntsNo});
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: Get.width * 0.6,
                          child: FarmingText(text: item.cntntsSj, size: 13.sp)),
                      SizedBox(
                          width: Get.width * 0.25,
                          child: FarmingText(text: item.regDt, size: 12.sp)),
                      Expanded(
                          child: FarmingText(text: item.rdcnt, size: 12.sp)),
                    ],
                  ),
                ));
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: controller.teckSkillList.length)),
    );
  }
}
