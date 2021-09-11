import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Activity",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Colors.red,
                      Colors.red,
                      Colors.orange,
                    ]),
                  ),
                  child: Container(
                    height: size.height * 0.02,
                    width: size.width * 0.05,
                    decoration: BoxDecoration(),
                    child: Icon(
                      Icons.check,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
