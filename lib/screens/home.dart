import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/home/home_view_model.dart';
import 'package:farming_manager/models/home/home_category_model.dart';
import 'package:farming_manager/widgets/farming_image.dart';
import 'package:farming_manager/widgets/menu_section.dart';
import 'package:farming_manager/widgets/weather_detail_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class HomeScreen extends GetView<HomeViewModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.yellow,
        key: const Key("home"),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(5),
            children: [
              Container(padding: const EdgeInsets.all(5), child: _menuLayout()),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 2),
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 8)
                          ]),
                      child: FarmingImage(url: null, width : MediaQuery.of(context).size.width * 0.5, height : MediaQuery.of(context).size.width * 0.5)),
                    Container( child: WeatherDetailSection())
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _menuLayout() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1.7,
          //item 의 가로 1, 세로 2 의 비율
          mainAxisSpacing: 1, //수평 Padding
          crossAxisSpacing: 1, //수직 Padding
        ),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          HomeCategoryModel homeCategoryModel = categories[index];
          return ItemMenuCard(model: homeCategoryModel);
        });
  }
}
