import 'package:farming_manager/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.grey, // status bar brightness
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light),
  );
}
