import 'package:farming_manager/constants/app_theme.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/router/pages.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:logger/logger.dart';

//flutter pub run build_runner build

var logger = Logger(
  printer: PrettyPrinter(methodCount: 1),
);

void main() async {
  setupAppModule();

  await FlutterDownloader.initialize(debug: true);
  await initializeDateFormatting().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
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
