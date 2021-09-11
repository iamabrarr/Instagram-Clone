import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SignUpScreens/SecondScreen.dart';
import 'package:instagramclone/Views/Widgets/CommonFlatButtton.dart';
import 'package:instagramclone/Views/Widgets/CommonTextField.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Choose username",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: size.height * 0.035),
            ),
            SizedBox(height: size.height * 0.015),
            Text(
              "You can always change it later",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: size.height * 0.03),
            CommonTextField(
              size: size,
              height: size.height * 0.06,
              width: size.width * 0.85,
              hinttext: "Username",
              register: true,
              endIcon: true,
            ),
            SizedBox(height: size.height * 0.02),
            CommonFlateButton(
              size: size,
              title: "Next",
              pressed: () {
                Get.to(SecondScreen());
              },
            )
          ],
        ),
      )),
    );
  }
}
