import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Views/Screens/SignUpScreens/FirstScreen.dart';
import 'package:instagramclone/Views/Widgets/CommonTextField.dart';
import 'package:instagramclone/Views/Widgets/SimpleLine.dart';
import 'components/loginbutton_with_bottomdetails.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height * 0.96,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "English(United Kingdom)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.3,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Spacer(),
                      SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.4,
                        child: Image.asset(
                          "assets/Icons/Textlogo.png",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CommonTextField(
                  size: size,
                  height: size.height * 0.06,
                  width: size.width * 0.85,
                  hinttext: "Phone number,email address or username",
                  register: true,
                ),
                SizedBox(height: size.height * 0.02),
                CommonTextField(
                  size: size,
                  height: size.height * 0.06,
                  width: size.width * 0.85,
                  hinttext: "Password",
                  register: true,
                  endIcon: true,
                ),
                SizedBox(height: size.height * 0.02),

                //  SigninTextFields(size: size),
                LoginButtonAndBottomDetails(size: size),
                SizedBox(
                  height: size.height * 0.025,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: size.width * 0.51,
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          size: size.height * 0.04,
                          color: Color(0xFF3997f0),
                        ),
                        Text(
                          "Continue with facebook",
                          style: TextStyle(
                              color: Color(0xFF3997f0),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SimpleLine(size: size, width: double.infinity),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: size.height * 0.016,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(FirstScreen());
                        },
                        child: Text(
                          " Signup",
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w700,
                            fontSize: size.height * 0.016,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
