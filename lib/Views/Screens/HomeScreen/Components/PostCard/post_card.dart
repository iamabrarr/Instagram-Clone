import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:instagramclone/Controllers/LikeController.dart';
import 'package:instagramclone/Models/UsersInfo.dart';
import 'package:instagramclone/Views/Constants/icons.dart';
import 'package:instagramclone/Views/Widgets/SimpleLine.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../mystory_and_userstories.dart';
import 'Components/post_bottom_details.dart';
import 'Components/post_upper_details.dart';

class PostCard extends StatefulWidget {
  const PostCard({
    Key key,
    @required this.size,
    this.userinfo,
  }) : super(key: key);

  final Size size;
  final Users userinfo;

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool liked = true;
  bool saved = true;
  @override
  Widget build(BuildContext context) {
    final likedcontroller = Get.put(LikeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.userinfo == userdetails[0]) ...[
          SizedBox(height: widget.size.height * 0.01),
          MyStoryAddandUserStories(size: widget.size),
          SimpleLine(size: widget.size, width: double.infinity),
        ],
        SizedBox(
          height: widget.size.height * 0.008,
        ),
        PostandUpperUserdetail(
          widget: widget,
        ),
        SizedBox(
          height: widget.size.height * 0.007,
        ),
        SimpleLine(size: widget.size, width: double.infinity),
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              liked = !liked;
            });
            liked ? likedcontroller.decrement() : likedcontroller.increment();
          },
          child: Container(
              height: widget.size.height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.userinfo.post),
                      fit: BoxFit.cover))),
        ),
        SizedBox(height: widget.size.height * 0.015),
        Row(
          children: [
            SizedBox(width: widget.size.width * 0.03),
            GestureDetector(
              onTap: () {
                setState(() {
                  liked = !liked;
                });
                liked
                    ? likedcontroller.decrement()
                    : likedcontroller.increment();
              },
              child: liked
                  ? Image.asset(
                      heart,
                      height: widget.size.height * 0.03,
                    )
                  : Image.asset(
                      heartfilled,
                      height: widget.size.height * 0.03,
                    ),
            ),
            SizedBox(width: widget.size.width * 0.04),
            GestureDetector(
                onTap: () {},
                child: Image.asset(
                  comment,
                  height: widget.size.height * 0.028,
                )),
            SizedBox(
              width: widget.size.width * 0.04,
            ),
            GestureDetector(
                onTap: () {},
                child: Image.asset(
                  share,
                  height: widget.size.height * 0.028,
                )),
            Spacer(),
            GestureDetector(
                onTap: () {
                  setState(() {
                    saved = !saved;
                  });
                },
                child: saved
                    ? Image.asset(
                        save,
                        height: widget.size.height * 0.03,
                      )
                    : Image.asset(
                        savefilled,
                        height: widget.size.height * 0.03,
                      )),
            SizedBox(width: widget.size.width * 0.04),
          ],
        ),
        SizedBox(
          height: widget.size.height * 0.007,
        ),
        Padding(
            padding: EdgeInsets.only(left: widget.size.width * 0.035),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: widget.size.height * 0.01,
                ),
                Obx(() {
                  return Text(
                    "${likedcontroller.liked} likes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                SizedBox(
                  height: widget.size.height * 0.003,
                ),
                PostDownDetailsandButtons(
                  widget: widget,
                ),
                SizedBox(height: widget.size.height * 0.0037),
                Text(
                  "${widget.userinfo.posttime} ago",
                  style: TextStyle(
                      color: Colors.grey, fontSize: widget.size.height * 0.015),
                )
              ],
            )),
      ],
    );
  }
}
