import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/Models/UsersInfo.dart';
import 'package:instagramclone/Views/Screens/StoryViewScreen/storyViewScreen.dart';

class UserStories extends StatelessWidget {
  const UserStories({
    Key key,
    @required this.size,
    @required this.userStory,
  }) : super(key: key);

  final Size size;
  final Users userStory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.02),
          child: GestureDetector(
            onTap: () {
              Get.to(StoryViewScreen(
                showstory: userStory.story,
              ));
            },
            child: Container(
              height: size.height * 0.085,
              width: size.width * 0.19,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.red,
                  Colors.red,
                  Colors.orange,
                ]),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.002,
                    horizontal: size.width * 0.006),
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.16,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(userStory.image),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          userStory.name,
          style: TextStyle(fontSize: size.height * 0.014),
        )
      ],
    );
  }
}
