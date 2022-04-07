
import 'package:farming_manager/controller/dstrprevnt/disaster_prevnt_view_model.dart';
import 'package:farming_manager/data/response/dstr_prevnt_list_response.dart';
import 'package:farming_manager/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../widgets/farming_text.dart';

class DisasterPrevntScreen extends GetView<DisasterPrevntViewModel> {
  const DisasterPrevntScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const FarmingText(text: "재해 예방 정보", size: 16)),
        body: Obx(() => PagedListView.separated(
              pagingController: controller.pagingController,
              builderDelegate: PagedChildBuilderDelegate<DstrPrevntListResponse>(
                itemBuilder: (context, item, index) => InkWell(
                    onTap: () {
                      logger.i(item);
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
                    )),
              ),
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            )));
  }
}
