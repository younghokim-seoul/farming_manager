import 'package:farming_manager/controller/kind/kind_information_view_model.dart';
import 'package:farming_manager/utils/utils.dart';
import 'package:farming_manager/widgets/farming_dropdown.dart';
import 'package:farming_manager/widgets/farming_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CalendarScreen extends GetView<KindInformationViewModel> {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const FarmingText(text: "달력", size: 16)),
      body: Container()
    );
  }

}
