import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagramclone/Models/Searchphotos.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.1,
                    ),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(width: size.width * 0.02),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              size: 18,
                            ),
                          ),
                          Container(
                            height: size.height * 0.05,
                            width: size.width * 0.4,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  top: size.height * 0.018),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search",
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.person_add_outlined),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.82,
                width: size.width,
                child: StaggeredGridView.countBuilder(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  itemCount: searchModels.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Posts(gridsearches: searchModels[index], size: size);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.count(
                    (index % 2 == 0) ? 1 : 2,
                    (index % 2 == 0) ? 1 : 2,
                  ),
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // List<Stone> SearchPosts() {
  //   final data = [

  //   ];
  // }
}

class Posts extends StatelessWidget {
  const Posts({
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
