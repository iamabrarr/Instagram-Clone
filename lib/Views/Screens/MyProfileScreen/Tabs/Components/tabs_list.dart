import 'package:flutter/material.dart';
import 'package:instagramclone/Views/Screens/MyProfileScreen/Tabs/my_posts.dart';
import 'package:instagramclone/Views/Screens/MyProfileScreen/Tabs/tag_posts.dart';

class MyProfiletabs extends StatefulWidget {
  const MyProfiletabs({Key key}) : super(key: key);

  @override
  _MyProfiletabsState createState() => _MyProfiletabsState();
}

class _MyProfiletabsState extends State<MyProfiletabs> {
  int selectedindex = 0;
  List<Widget> pages = [
    MyPostsTab(),
    TagPosts(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [profiletabs(), Expanded(child: pages[selectedindex])],
    );
  }

  Widget profiletabs() {
    return Row(
      children: [
        catogoriess(Icons.grid_on_sharp, 0),
        catogoriess(Icons.person_pin_outlined, 1)
      ],
    );
  }

  Widget catogoriess(IconData icon, int index) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          height: size.height * 0.06,
          width: size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: size.height * 0.001),
              Icon(
                icon,
                color: selectedindex == index
                    ? Colors.black
                    : Colors.grey.shade400,
              ),
              selectedindex == index
                  ? Container(
                      height: 1.5,
                      width: size.width * 0.5,
                      color: Colors.black,
                    )
                  : SizedBox(),
            ],
          ),
        ));
  }
}
