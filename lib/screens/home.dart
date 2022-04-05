import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/constants/keys.dart';
import 'package:farming_manager/controller/home/home_view_model.dart';
import 'package:farming_manager/data/response/weather_response.dart';
import 'package:farming_manager/models/home/home_category_model.dart';
import 'package:farming_manager/widgets/menu_section.dart';
import 'package:farming_manager/widgets/weather_detail_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

class HomeScreen extends GetView<HomeViewModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.yellow,
        body: SafeArea(
          key: Keys.HOME_SCREEN,
          child:
          ListView(
            padding: const EdgeInsets.all(5),
            children: [
              Container(padding: const EdgeInsets.all(5), child: _buildMenuLayout()),
              Column(
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
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: Obx(() => _buildWeatherIcon(context,controller.currentWeather)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Obx(() => WeatherDetailSection(wData: controller.currentWeather)),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildWeatherIcon(BuildContext context, WeatherResponse weatherResponse) {
    return MapString.mapStringToIcon(weatherResponse.weatherCode, context, 100.h);
  }

  Widget _buildMenuLayout() {
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
          return GestureDetector(
            onTap: () {
              logger.i("[Click] => " + homeCategoryModel.toJson().toString());
              Get.toNamed(homeCategoryModel.id);
            },
            child: ItemMenuCard(model: homeCategoryModel),
          );
        });
  }
}
