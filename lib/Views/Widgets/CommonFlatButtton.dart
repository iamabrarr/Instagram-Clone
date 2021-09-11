import 'package:flutter/material.dart';

class CommonFlateButton extends StatelessWidget {
  const CommonFlateButton({
    Key key,
    @required this.size,
    @required this.title,
    this.pressed,
  }) : super(key: key);

  final Size size;
  final String title;
  final pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.85,
        decoration: BoxDecoration(
            color: Color(0xFF3997f0), borderRadius: BorderRadius.circular(05)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
