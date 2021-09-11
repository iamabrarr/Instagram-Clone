import 'package:flutter/material.dart';

import '../post_card.dart';

class PostandUpperUserdetail extends StatelessWidget {
  const PostandUpperUserdetail({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final PostCard widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: widget.size.width * 0.04, right: widget.size.width * 0.03),
          child: Container(
            height: widget.size.height * 0.052,
            width: widget.size.width * 0.12,
            decoration: BoxDecoration(
              gradient: widget.userinfo.isStory
                  ? LinearGradient(colors: [
                      Colors.red,
                      Colors.red,
                      Colors.orange,
                    ])
                  : null,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: widget.size.height * 0.002,
                  horizontal: widget.size.width * 0.007),
              child: Container(
                height: widget.size.height * 0.04,
                width: widget.size.width * 0.08,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.white),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(widget.userinfo.image),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ),
        Text(
          widget.userinfo.name,
          style: TextStyle(
              fontSize: widget.size.height * 0.018,
              fontWeight: FontWeight.w600),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.more_vert),
        ),
        SizedBox(width: widget.size.width * 0.02),
      ],
    );
  }
}
