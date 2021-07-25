import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:python/screens/PinterestGrid.dart';
import 'package:python/utils/BottomNavBarV2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar V2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PinterestGrid(),
    );
  }
}

