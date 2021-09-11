import 'package:flutter/material.dart';
import 'package:instagramclone/Views/Constants/icons.dart';
import 'package:instagramclone/Views/Constants/images.dart';
import 'package:instagramclone/Views/Screens/ActivityScreen/activity_screen.dart';
import 'package:instagramclone/Views/Screens/HomeScreen/homeScreen.dart';
import 'package:instagramclone/Views/Screens/MyProfileScreen/my_profile_screen.dart';
import 'package:instagramclone/Views/Screens/SearchScreen/search_screen.dart';
import 'package:instagramclone/Views/Screens/UploadScreen/uploadScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;
  List<Widget> _widgets = [
    HomeScreen(),
    SearchScreen(),
    UploadScreen(),
    ActivityScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: _widgets.elementAt(selectedindex),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: size.height * 0.07,
            width: size.width * 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 0;
                      });
                    },
                    child: SizedBox(
                        height: size.height * 0.025,
                        width: size.width * 0.1,
                        child: selectedindex == 0
                            ? Image.asset(homefilled)
                            : Image.asset(home)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 1;
                      });
                    },
                    child: Container(
                      height: size.height * 0.025,
                      width: size.width * 0.1,
                      child: selectedindex == 1
                          ? Image.asset(searchfilled)
                          : Image.asset(search),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 2;
                      });
                    },
                    child: Container(
                      height: size.height * 0.027,
                      width: size.width * 0.062,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Icon(Icons.add,
                          color: Colors.black, size: size.height * 0.024),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 3;
                      });
                    },
                    child: SizedBox(
                      height: size.height * 0.025,
                      width: size.width * 0.1,
                      child: selectedindex == 3
                          ? Image.asset(bottomheartfilled)
                          : Image.asset(bottomheart),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = 4;
                        });
                      },
                      child: Container(
                        height: size.height * 0.025,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(
                                image: AssetImage(profileImage))),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
