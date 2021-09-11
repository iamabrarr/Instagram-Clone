import 'package:flutter/material.dart';
import 'package:instagramclone/Views/Constants/images.dart';

import 'Tabs/Components/tabs_list.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox.expand(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            UpperAppbar(size: size),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(profileImage),
                    radius: size.height * 0.055,
                  ),
                  SizedBox(width: size.width * 0.15),
                  ProfileColumnInfo(
                    size: size,
                    title: "Posts",
                    number: "10",
                  ),
                  ProfileColumnInfo(
                    size: size,
                    title: "Followers",
                    number: "1,680",
                  ),
                  ProfileColumnInfo(
                    size: size,
                    title: "Following",
                    number: "54",
                  ),
                ],
              ),
            ),
            UserDetailsAndButton(size: size),
            SizedBox(height: size.height * 0.02),
            SizedBox(
                height: size.height,
                width: size.width,
                child: Expanded(child: MyProfiletabs())),
          ]),
        ),
      )),
    );
  }
}

class UserDetailsAndButton extends StatelessWidget {
  const UserDetailsAndButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.05, top: size.height * 0.017),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem Ipsum",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: size.height * 0.005),
          Text("You can never go wrong with a little me /- \n good boy"),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            height: size.height * 0.045,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(7)),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            children: [
              Text(
                "Story Highlights",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                size: size.height * 0.023,
              ),
              SizedBox(
                width: size.width * 0.04,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileColumnInfo extends StatelessWidget {
  const ProfileColumnInfo({
    Key key,
    @required this.size,
    this.title,
    this.number,
  }) : super(key: key);

  final Size size;
  final String title, number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.05),
      child: Column(
        children: [
          Text(
            number,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: size.height * 0.016),
          ),
        ],
      ),
    );
  }
}

class UpperAppbar extends StatelessWidget {
  const UpperAppbar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Loremipsum ",
                style: Theme.of(context).textTheme.headline6,
              ),
              Icon(Icons.keyboard_arrow_down,
                  color: Colors.grey.shade600, size: size.height * 0.025),
              CircleAvatar(
                radius: size.height * 0.005,
                backgroundColor: Colors.red,
              ),
              Spacer(),
              Container(
                height: size.height * 0.027,
                width: size.width * 0.062,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: Colors.black)),
                child: Icon(Icons.add,
                    color: Colors.black, size: size.height * 0.023),
              ),
              SizedBox(
                width: size.width * 0.06,
              ),
              Icon(
                Icons.menu,
                size: size.height * 0.038,
              ),
            ],
          )
        ],
      ),
    );
  }
}
