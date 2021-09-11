import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SplashScreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      title: "Instagram",
      home: SplashScreen(),
    );
  }
}
