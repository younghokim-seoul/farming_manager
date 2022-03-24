import 'package:farming_manager/constants/app_theme.dart';
import 'package:farming_manager/controller/splash/splash_binding.dart';
import 'package:farming_manager/router/pages.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:farming_manager/screens/splash.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() async {
  Fimber.plantTree(DebugTree(useColors: true));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              builder: (context, widget) {
                ScreenUtil.setContext(context);
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!,
                );
              },
              debugShowCheckedModeBanner: false,
              defaultTransition: Transition.cupertino,
              theme: AppTheme.light,
              themeMode: ThemeMode.light,
              initialRoute: Routes.SPLASH,
              getPages: AppPages.pages,
            ));
  }
}
