import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'app_theme.dart';
import 'main_binding.dart';
import 'routes/app_pages.dart';

class MyApp extends StatefulWidget {
  const MyApp(this.userIsLoggedIn);

  final bool userIsLoggedIn;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

/// MyApp
class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black,
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.homeRoute,
      // getPages: AppPages.routes,
      smartManagement: SmartManagement.keepFactory,
      defaultTransition: Transition.cupertino,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          cupertinoOverrideTheme: const CupertinoThemeData(
            primaryColor: Colors.green,
          ),
          // for others(Android, Fuchsia)
          cursorColor: orangePrimary,
          primaryColor: orangePrimary,
          backgroundColor: orangeExtraLight,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }),
          primaryColorBrightness: Brightness.light,
          brightness: Brightness.light,
          inputDecorationTheme: const InputDecorationTheme(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: orangePrimary)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: orangePrimary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: orangePrimary),
            ),
          ),
          // next line is important!
          appBarTheme: const AppBarTheme(
              brightness: Brightness.light, color: Colors.white)),
    );
  }
}
