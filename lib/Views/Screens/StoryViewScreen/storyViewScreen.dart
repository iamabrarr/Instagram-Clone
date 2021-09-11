import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Models/UsersInfo.dart';
import 'package:instagramclone/Models/UsersMemories.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({Key key, this.showstory}) : super(key: key);
  final String showstory;
  @override
  _StoryViewScreenState createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Get.back();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.2),
                Center(
                  child: SizedBox(
                      height: size.height * 0.6,
                      width: double.infinity,
                      child: Image.asset(widget.showstory)),
                ),
                Spacer(),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.01),
                    Container(
                      height: size.height * 0.055,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.06,
                            bottom: size.height * 0.008),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Send a message",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.05),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          MdiIcons.shareAllOutline,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ));
  }
}
