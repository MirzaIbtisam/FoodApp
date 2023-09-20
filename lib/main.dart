import 'package:flutter/material.dart';
import 'package:food_app_getx/View/Favourites/Favourites.dart';
import 'package:food_app_getx/View/MainScreen/mainscreen.dart';
import 'package:food_app_getx/View/MaintainBalance/maintainbalance.dart';
import 'package:food_app_getx/View/MaintainBalanceSecondScreen/MaintainBalanceSecondScreen.dart';
import 'package:food_app_getx/View/Stariting%20Screens/first_page.dart';
import 'package:food_app_getx/View/YourGoal/yourgoal.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'View/YourGender/yourgender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(
            context, widget!), // Use BouncingScrollWrapper if needed
        maxWidth: 1200,
        minWidth: 300,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(300, name: MOBILE),
          ResponsiveBreakpoint.resize(500, name: MOBILE),
          ResponsiveBreakpoint.resize(700, name: TABLET),
          ResponsiveBreakpoint.resize(900, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: TABLET),
        ],
      ),
      debugShowCheckedModeBanner: false,
      home:Favourites(),
    );
  }
}

