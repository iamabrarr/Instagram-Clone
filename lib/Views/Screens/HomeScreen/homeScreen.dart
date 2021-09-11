import 'package:flutter/material.dart';
import 'package:instagramclone/Models/UsersInfo.dart';
import 'package:instagramclone/Views/Constants/icons.dart';
import 'Components/PostCard/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
            height: size.height * 0.07,
            child: Image.asset("assets/Icons/Textlogo.png")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SizedBox(
                  height: size.height * 0.03,
                  child: Image.asset(
                    share,
                  )))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: size.height * 0.9,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.82,
                  width: size.width,
                  child: ListView.builder(
                      itemCount: userdetails.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PostCard(
                          size: size,
                          userinfo: userdetails[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
