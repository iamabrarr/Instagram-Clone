import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SignInScreen/log_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(SignInScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: size.height * 0.5,
            width: double.infinity,
            child: Column(
              children: [
                Spacer(),
                SizedBox(
                  height: size.height * 0.1,
                  child: Image.asset("assets/Icons/Logo.png"),
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            child: Column(
              children: [
                Spacer(),
                Text(
                  "from",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
                Text(
                  "Instagram",
                  style: TextStyle(
                      color: Color(0xFF801c4f),
                      fontSize: size.height * 0.033,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
