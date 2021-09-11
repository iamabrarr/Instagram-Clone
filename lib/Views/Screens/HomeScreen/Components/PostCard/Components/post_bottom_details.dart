import 'package:flutter/material.dart';

import '../post_card.dart';

class PostDownDetailsandButtons extends StatelessWidget {
  const PostDownDetailsandButtons({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final PostCard widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: widget.size.width * 0.95,
          child: RichText(
              text: TextSpan(
                  text: widget.userinfo.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                TextSpan(
                  text: widget.userinfo.postcaption,
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                )
              ])),
        ),
        SizedBox(
          height: widget.size.height * 0.008,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "View comments",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: widget.size.height * 0.007),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: widget.size.height * 0.03,
              width: widget.size.width * 0.07,
              child: ClipOval(
                child: Image.asset(
                  "assets/Users/Profile.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: widget.size.width * 0.03,
            ),
            Container(
              height: widget.size.height * 0.03,
              width: widget.size.width * 0.4,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",
                    hintStyle: TextStyle(
                        fontSize: widget.size.height * 0.0165,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: widget.size.height * 0.02,
            ),
            SizedBox(
              width: widget.size.width * 0.02,
            ),
            Container(
              height: widget.size.height * 0.015,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: widget.size.height * 0.0125,
              ),
            ),
            SizedBox(
              width: widget.size.width * 0.04,
            )
          ],
        ),
      ],
    );
  }
}
