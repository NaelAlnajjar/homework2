import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/ui/author_widget_screen.dart';
import 'package:ui_task2/ui/screens/main_app_screen.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en','US'), Locale('ar','JO')],
      path: 'assets/translations',

      fallbackLocale: Locale('en','US'),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                '/': (context) => MainAppScreen(),
                '/x': (context) => AuthorWidgetScreen(),
              },
            ));
  }
}
