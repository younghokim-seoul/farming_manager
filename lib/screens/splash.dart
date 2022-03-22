import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/splash/splash_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends GetView<SplashViewModel> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.green,
      child: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.leaf_arrow_circlepath,
                color: AppColors.white,
                size: 100,
              ),
              Text(
                '농사 모아',
                style: GoogleFonts.openSans(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: AppColors.white),
              ),

            ],
          )),
          SizedBox(
            height: 30,
            child:
            Text(
              '이 앱은 공공기관에서 제공하는 데이터를 이용하고 있습니다.',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: AppColors.white),
            ),
          )
        ],
      ),
    ));
  }
}
