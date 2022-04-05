import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:farming_manager/data/response/menual_category_response.dart';
import 'package:farming_manager/main.dart';
import 'package:farming_manager/widgets/farming_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';

class ManualScreen extends GetView<ManualViewModel> {
  const ManualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "품목별 관리매뉴얼", size: 16)),
      body: Obx(() => _buildBody(context, controller)),
    );
  }

  Widget _buildBody(BuildContext context, ManualViewModel viewModel) {
    if (viewModel.loading.value == true) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: _menualSelectDropDown()),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final item = controller.categoryQueryList[index];
                    return InkWell(
                        onTap: () {
                          //다운로드 코드.
                          logger.i(item);
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FarmingText(text: item.sj, size: 16.sp),
                                SizedBox(height: 10.h),
                                Text(item.fileDownUrlInfo,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ))
                              ],
                            ),
                        )
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: controller.categoryQueryList.length))
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
      items: controller.categoryList
          .map((item) =>
          DropdownMenuItem<MenualCategoryResponse>(
            value: item,
            child: Text(
              item.codeNm,
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
        final item = value as MenualCategoryResponse;
        controller.fetchSearchMenualList(item.kidofcomdtySeCode);
      },
      onSaved: (value) {
        // Fimber.i("clicker -> " + value.toString());
      },
    );
  }
}
