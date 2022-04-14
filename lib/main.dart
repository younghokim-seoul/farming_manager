import 'package:farming_manager/constants/app_theme.dart';
import 'package:farming_manager/di/app_module.dart';
import 'package:farming_manager/router/pages.dart';
import 'package:farming_manager/router/routese.dart';
import 'package:farming_manager/utils/local_preference_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:logger/logger.dart';

//flutter pub run build_runner build

var logger = Logger(
  printer: PrettyPrinter(methodCount: 1),
);

late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() async {
  setupAppModule();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await _firebaseSetting();
  await FlutterDownloader.initialize(debug: true);
  await initializeDateFormatting().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
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

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  logger.i('Handling a background message ${message.messageId}' + "\n" + '${message.data}');
}

_firebaseSetting() async {
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  var channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );
  var initialzationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');

  var initialzationSettingsIOS = const IOSInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestAlertPermission: true,
  );



  var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettings = InitializationSettings(
      android: initialzationSettingsAndroid, iOS: initialzationSettingsIOS);

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  var token = await FirebaseMessaging.instance.getToken();

  if (token != null) {
    await LocalPreferenceManager.putToken(token);
  }

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    logger.i('Got a message whilst in the foreground!' + "\n" + 'Message data: ${message.data}');

    var data = message.data;
    var androidNotiDetails = AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
    );
    var iOSNotiDetails = const IOSNotificationDetails();
    var details =
        NotificationDetails(android: androidNotiDetails, iOS: iOSNotiDetails);

    if (data.isNotEmpty) {
      flutterLocalNotificationsPlugin.show(
        data.hashCode,
        data['title'],
        data['body'],
        details,
      );
    }
  });
  logger.i("::::token " + token.toString());
}
