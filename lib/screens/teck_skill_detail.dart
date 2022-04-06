import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/teck/teck_skill_detail_view_model.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TeckSkillDetailScreen extends GetView<TeckSkillDetailViewModel> {
  const TeckSkillDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "질의 응답", size: 16)),
      body: Obx(() => _buildBody(context, controller)),
    );
  }

  Widget _buildBody(BuildContext context, TeckSkillDetailViewModel viewModel) {
    if (controller.selectedDetailItem == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 36, right: 20, left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                width: Get.width,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black, width: 1.w),
                    borderRadius: BorderRadius.circular(8)),
                child: FarmingText(
                    text: controller.selectedDetailItem!.cntntsSj,
                    size: 18.sp,
                    weight: FontWeight.bold)),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(8)),
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child:
                          Html(data: viewModel.selectedDetailItem!.questDtl))),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(8)),
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child:
                          Html(data: viewModel.selectedDetailItem!.answerDtl))),
            ),
          ]));
    }
  }
}
