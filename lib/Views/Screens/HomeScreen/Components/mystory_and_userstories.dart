import 'package:flutter/material.dart';
import 'package:instagramclone/Models/UsersInfo.dart';
import 'package:instagramclone/Views/Constants/images.dart';

import 'user_stories_circle.dart';

class MyStoryAddandUserStories extends StatelessWidget {
  const MyStoryAddandUserStories({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.115,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.03),
                          child: SizedBox(
                            height: size.height * 0.08,
                            width: size.width * 0.17,
                            child: ClipOval(
                              child: Image.asset(
                                profileImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: size.height * 0.03,
                              width: size.width * 0.06,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  shape: BoxShape.circle,
                                  color: Colors.blue),
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Text(
                      "Dummy",
                      style: TextStyle(fontSize: size.height * 0.014),
                    )
                  ],
                ),
                Container(
                    height: size.height * 0.12,
                    width: size.width,
                    child: Row(
                      children: [
                        ...List.generate(
                            userdetails.length,
                            (index) => UserStories(
                                size: size, userStory: userdetails[index]))
                      ],
                    ))

                // ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: userdetails.length,
                //       itemBuilder: (BuildContext context, int index) {
                //         return UserStories(
                //             size: size, userStory: userdetails[index]);
                //       }),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
      ],
    );
  }
}
