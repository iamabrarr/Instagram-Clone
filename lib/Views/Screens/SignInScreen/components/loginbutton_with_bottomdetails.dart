import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:instagramclone/Views/Widgets/CommonFlatButtton.dart';
import 'package:instagramclone/Views/Widgets/SimpleLine.dart';

class LoginButtonAndBottomDetails extends StatelessWidget {
  const LoginButtonAndBottomDetails({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonFlateButton(
          size: size,
          title: "Login",
          pressed: () {
            Get.offAll(BottomNavBar());
          },
        ),
        SizedBox(height: size.height * 0.015),
        Container(
          width: size.width * 0.80,
          child: Row(
            children: [
              Text(
                "Forgotten your login details?",
                style: TextStyle(
                    color: Colors.grey, fontSize: size.height * 0.015),
              ),
              Text(
                "Get help with logging in",
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: size.height * 0.015,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          width: size.width * 0.85,
          child: Row(
            children: [
              SimpleLine(
                size: size,
                width: size.width * 0.375,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SimpleLine(
                size: size,
                width: size.width * 0.375,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
