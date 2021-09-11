import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagramclone/Controllers/image_picker_controller.dart';
import 'package:instagramclone/Views/Screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:instagramclone/Views/Widgets/CommonFlatButtton.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ImagePickerController());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                height: size.height * 0.13,
                width: size.width * 0.3,
                child: ClipOval(
                  child: Obx(() => _controller.selectedimagePath.value == ''
                      ? Container(
                          height: size.height * 0.1,
                          width: size.width * 0.22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 3, color: Colors.black)),
                          child: Center(
                            child: Icon(
                              Icons.add_a_photo,
                              size: size.height * 0.06,
                            ),
                          ),
                        )
                      : Image.file(
                          File(_controller.selectedimagePath.value),
                          fit: BoxFit.fill,
                        )),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Add profile photo",
                style: TextStyle(
                  fontSize: size.height * 0.035,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text("Add a profile photo so that your friends know\nit's you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300)),
              SizedBox(
                height: size.height * 0.03,
              ),
              CommonFlateButton(
                size: size,
                title: "Add a Photo",
                pressed: () {
                  _controller.getImage(ImageSource.gallery);
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(BottomNavBar());
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Color(0xFF3997f0), fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
