import 'package:flutter/material.dart';

class SimpleLine extends StatelessWidget {
  const SimpleLine({
    Key key,
    @required this.size,
    @required this.width,
  }) : super(key: key);

  final Size size;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: width,
      color: Colors.grey.shade300,
    );
  }
}
