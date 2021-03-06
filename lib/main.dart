import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:python/screens/PinterestGrid.dart';
import 'package:python/splash.dart';
import 'package:python/utils/BottomNavBarV2.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Python',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),   // PinterestGrid()
      home: PinterestGrid(),
    );
  }
}

