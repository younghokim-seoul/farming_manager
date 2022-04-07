import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:farming_manager/controller/video/vedio_view_model.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/data/response/vedio_category_response.dart';
import 'package:farming_manager/data/response/vedio_list_response.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/farming_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../widgets/farming_text.dart';

class VedioScreen extends GetView<VideoViewModel> {
  const VedioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "농업 기술 동영상", size: 16)),
      body: Obx(() => _buildBody(context, controller)),
    );
  }

  Widget _buildBody(BuildContext context, VideoViewModel viewModel) {
    if (viewModel.loading.value == true) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              child: _menualSelectDropDown()),
          Expanded(
              child: PagedListView.separated(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<VedioListResponse>(
              firstPageProgressIndicatorBuilder: (context) => const Center(),
              itemBuilder: (context, item, index) => InkWell(
                onTap: () {

                },
                child:
                    ListTile(title: FarmingText(text: item.videoTitle, size: 16)),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ))
        ],
      );
    }
  }

  Widget _menualSelectDropDown() {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      isExpanded: true,
      hint: const FarmingText(text: "선택하세요.", size: 14),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      buttonHeight: 50.h,
      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: controller.vedioCategoryItems
          .map((item) => DropdownMenuItem<VedioCategoryResponse>(
                value: item,
                child: Text(
                  item.categoryNm,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select vedio.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
        logger.i("clicker s -> " + value.toString());
        final item = value as VedioCategoryResponse;

        controller.fetchVedioDetail(item.categoryCode);
      },
      onSaved: (value) {
        // Fimber.i("clicker -> " + value.toString());
      },
    );
  }
}
