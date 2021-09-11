import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SignUpScreens/ThirdScreen.dart';
import 'package:instagramclone/Views/Widgets/CommonFlatButtton.dart';
import 'package:instagramclone/Views/Widgets/CommonTextField.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool remeber = false;
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
              "Create a password",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: size.height * 0.035),
            ),
            SizedBox(height: size.height * 0.015),
            Container(
              width: size.width * 0.8,
              child: Text(
                "For security,your password must be six characters or more.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            CommonTextField(
              size: size,
              height: size.height * 0.06,
              width: size.width * 0.85,
              hinttext: "Password",
              register: true,
              endIcon: true,
            ),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        remeber = !remeber;
                      });
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: remeber
                              ? Color(0xFF3997f0)
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(05)),
                      child: Center(
                          child: Icon(
                        Icons.check,
                        size: 17,
                        color: remeber ? Colors.white : Colors.grey,
                      )),
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    "Remember password",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: size.height * 0.0165,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            CommonFlateButton(
              size: size,
              title: "Next",
              pressed: () {
                Get.to(ThirdScreen());
              },
            ),
          ],
        ),
      )),
    );
  }
}
