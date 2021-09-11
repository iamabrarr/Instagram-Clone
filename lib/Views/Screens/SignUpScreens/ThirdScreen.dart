import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SignUpScreens/ForthScreen.dart';
import 'package:instagramclone/Views/Widgets/CommonFlatButtton.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            Text(
              "Welcome to Instagram,\n DummyUser",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: size.height * 0.035),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
                width: size.width * 0.65,
                child: Text(
                  "We'll add the email address or username and phone number to Instagram.You can update this info at anytime in your settings or enter new info now.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            CommonFlateButton(
              size: size,
              title: "Complete Sign-up",
              pressed: () {
                Get.to(ForthScreen());
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Add New Phone Number or Email Address",
                style: TextStyle(
                    color: Color(0xFF3997f0), fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: size.height * 0.3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See ",
                  style: TextStyle(
                      color: Colors.grey, fontSize: size.height * 0.015),
                ),
                Text(
                  "Terms,Data Policy",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: size.height * 0.015,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  " and ",
                  style: TextStyle(
                      color: Colors.grey, fontSize: size.height * 0.015),
                ),
                Text(
                  "Cookie Policy.",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: size.height * 0.015,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
