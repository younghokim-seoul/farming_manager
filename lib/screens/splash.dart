import 'package:farming_manager/constants/colors.dart';
import 'package:farming_manager/controller/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends GetView<SplashViewModel> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: AppColors.green,
          child:      Column(
            children: [
              Expanded(
                  child: Container(


                  )),
              SizedBox(
                height: 30,
                child: Text(
                  '이 앱은 공공기관에서 제공하는 데이터를 이용하고 있습니다.',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 13,color: AppColors.white),
                ),
              )
            ],
          ),
        ));
  }
}
