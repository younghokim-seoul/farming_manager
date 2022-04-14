import 'package:farming_manager/constants/assets.dart';
import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/splash/splash_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends GetView<SplashViewModel> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        AppAssets.logo,
        height: 245,
        width: 245,
        fit: BoxFit.fitWidth,
      ),
    ));
  }
}
