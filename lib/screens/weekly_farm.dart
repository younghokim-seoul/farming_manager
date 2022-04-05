import 'package:farming_manager/controller/manual/manual_view_model.dart';
import 'package:farming_manager/controller/weeklyfarm/week_farm_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/farming_text.dart';
class WeeklyFarmScreen extends GetView<WeeklyFarmViewModel> {

  const WeeklyFarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "주간 농사정보", size: 16)),
      body: Center(),
    );
  }
}
