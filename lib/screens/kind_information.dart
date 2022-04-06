import 'package:auto_size_text/auto_size_text.dart';
import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/kind/kind_information_view_model.dart';
import 'package:farming_manager/data/response/king_category_response.dart';
import 'package:farming_manager/data/response/king_detail_response.dart';
import 'package:farming_manager/widgets/farming_dropdown.dart';
import 'package:farming_manager/widgets/farming_image.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class KindInformationScreen extends GetView<KindInformationViewModel> {
  const KindInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              title: const FarmingText(text: "품종 정보", size: 16)),
          body: _buildBody(context, controller),
        ));
  }

  Widget _buildBody(BuildContext context, KindInformationViewModel viewModel) {
    if (viewModel.loading.value == true) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.4.w,
              child: _kindSelectDropDown()),
          Expanded(
              child: Row(
            children: [
              SizedBox(
                  width: 130.w,
                  child: ListView.separated(
                      controller: controller.scrollController.value,
                      itemBuilder: (context, index) {
                        final KindDetailResponse item = controller.categoryDetalList[index];

                        if(index == controller.categoryDetalList.length -1){
                          return const CupertinoActivityIndicator();
                        }
                        return InkWell(
                          onTap: () {
                            controller.setSelectedItem(item);
                          },
                          child: ListTile(
                              title:
                                  FarmingText(text: item.cntntsSj, size: 16)),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: controller.categoryDetalList.length)),
              _buildSelectedInfo(context, controller)
            ],
          ))
        ],
      );
    }
  }

  Widget _buildSelectedInfo(
      BuildContext context, KindInformationViewModel viewModel) {
    return Expanded(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.black, width: 1.w),
              borderRadius: BorderRadius.circular(8)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: FarmingImage(
                url: viewModel.selectedItem?.imgFileLink,
                width: MediaQuery.of(context).size.width),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: FarmingText(
                    text: viewModel.selectedItem?.mainChartrInfo ?? "",
                    size: 16.sp)))
      ],
    ));
  }

  Widget _kindSelectDropDown() {
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
      items: controller.categoryList
          .map((item) => DropdownMenuItem<KindCategoryResponse>(
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
          return 'Please select gender.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
        logger.i("clicker s -> " + value.toString());
        final item = value as KindCategoryResponse;
        controller.fetchKindDetail(item.categoryCode);
      },
      onSaved: (value) {
        // Fimber.i("clicker -> " + value.toString());
      },
    );
  }
}
