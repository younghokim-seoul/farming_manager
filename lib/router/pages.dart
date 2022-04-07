import 'package:farming_manager/controller/calendar/calendar_binding.dart';
import 'package:farming_manager/controller/dstrprevnt/disaster_prevnt_binding.dart';
import 'package:farming_manager/controller/home/home_binding.dart';
import 'package:farming_manager/controller/kind/kind_information_binding.dart';
import 'package:farming_manager/controller/manual/manual_binding.dart';
import 'package:farming_manager/controller/memo/memo_binding.dart';
import 'package:farming_manager/controller/splash/splash_binding.dart';
import 'package:farming_manager/controller/teck/teck_skill_binding.dart';
import 'package:farming_manager/controller/teck/teck_skill_detail_binding.dart';
import 'package:farming_manager/controller/video/vedio_binding.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:farming_manager/screens/disaster_prevnt.dart';
import 'package:farming_manager/screens/home.dart';
import 'package:farming_manager/screens/kind_information.dart';
import 'package:farming_manager/screens/manual.dart';
import 'package:farming_manager/screens/splash.dart';
import 'package:farming_manager/screens/teck_skill.dart';
import 'package:farming_manager/screens/teck_skill_detail.dart';
import 'package:farming_manager/screens/vedio.dart';
import 'package:farming_manager/screens/weekly_farm.dart';
import 'package:get/get.dart';

import '../controller/weeklyfarm/week_farm_binding.dart';
import '../screens/calendar.dart';
import '../screens/memo.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.KING_INFORMATION,
        page: () => const KindInformationScreen(),
        binding: KindInformationBinding()),
    GetPage(
        name: Routes.CALENDAR,
        page: () => const CalendarScreen(),
        binding: CalendarViewBinding()),
    GetPage(
        name: Routes.MEMO,
        page: () => const MemoScreen(),
        binding: MemoViewBinding()),
    GetPage(
        name: Routes.MANUAL,
        page: () => const ManualScreen(),
        binding: ManualBinding()),
    GetPage(
        name: Routes.WEEKLY_FARM,
        page: () => const WeeklyFarmScreen(),
        binding: WeeklyFarmBinding()),
    GetPage(
        name: Routes.TECK,
        page: () => const TeckSkillScreen(),
        binding: TeckSkillBinding()),
    GetPage(
        name: Routes.DISASTER_PREVNT,
        page: () => const DisasterPrevntScreen(),
        binding: DisasterPrevntBinding()),
    GetPage(
        name: Routes.TECK_DETAIL,
        page: () => const TeckSkillDetailScreen(),
        binding: TeckSkillDetailBinding()),
    GetPage(
        name: Routes.VEDIO,
        page: () => const VedioScreen(),
        binding: VedioBinding()),
  ];
}
