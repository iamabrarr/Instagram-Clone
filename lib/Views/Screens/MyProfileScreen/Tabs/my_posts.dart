import 'package:flutter/material.dart';
import 'package:instagramclone/Models/Searchphotos.dart';

class MyPostsTab extends StatelessWidget {
  const MyPostsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.003),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: searchModels.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
          itemBuilder: (context, index) =>
              MyPosts(size: size, gridsearches: searchModels[index])),
    );
  }
}

class MyPosts extends StatelessWidget {
  const MyPosts({
    Key key,
    @required this.size,
    this.gridsearches,
  }) : super(key: key);

  final Size size;
  final SearchPhotoModel gridsearches;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(gridsearches.path), fit: BoxFit.cover)),
    );
  }
}
