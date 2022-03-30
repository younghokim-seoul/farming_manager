import 'package:farming_manager/models/home/home_category_model.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

const List<HomeCategoryModel> categories = [
  HomeCategoryModel(name: "품종정보", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "품목별 관리 매뉴얼", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "주간 농사 정보", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "농작물재해예장정보", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "현장애로기술사례", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "농업기술동영상", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "미리알림", id: Routes.KING_INFORMATION),
  HomeCategoryModel(name: "달력", id: Routes.CALENDAR)
];

const List<String> kingCategories = ['식량작물', '특용작물', '채소', '과수', '화훼', '녹비작물'];




final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

String dataTimeToString(DateTime epoch) {
  return DateFormat('yyyy년 M월 d일', 'ko').format(epoch);
}

class MapString {
  static Icon mapStringToIcon(
      String input, BuildContext context, double iconSize) {
    IconData myIcon;
    switch (input) {
      case '0':
        myIcon = WeatherIcons.sunrise;
        break;
      case '1':
        myIcon = WeatherIcons.raindrop;
        break;
      case '2':
        myIcon = WeatherIcons.night_snow_thunderstorm;
        break;
      case '3':
        myIcon = WeatherIcons.snow;
        break;
      default:
        myIcon = WeatherIcons.na;
    }
    return Icon(
      myIcon,
      size: iconSize,
      color: Theme.of(context).primaryColor,
    );
  }
}

