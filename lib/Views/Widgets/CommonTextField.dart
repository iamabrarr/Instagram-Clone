import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    Key key,
    @required this.size,
    @required this.height,
    @required this.width,
    @required this.register,
    this.hinttext,
    this.endIcon,
  }) : super(key: key);

  final Size size;
  final double height;
  final double width;
  final bool register;
  final endIcon;
  final hinttext;
  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(width: 0.5, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(05)),
      child: Padding(
        padding: EdgeInsets.only(
            left: widget.size.width * 0.03,
            right: widget.size.width * 0.03,
            bottom: widget.size.height * 0.013),
        child: TextFormField(
          obscureText: tapped,
          decoration: InputDecoration(
              // suffixIcon: widget.endIcon
              //     ? IconButton(
              //         onPressed: () {
              //           setState(() {
              //             tapped = !tapped;
              //           });
              //         },
              //         icon: tapped
              //             ? Icon(
              //                 Icons.lock,
              //                 color: Colors.black,
              //               )
              //             : Icon(
              //                 Icons.lock_open,
              //                 color: Colors.blue,
              //               ))
              //     : SizedBox(),
              border: InputBorder.none,
              hintText: widget.register ? widget.hinttext : "",
              hintStyle: TextStyle(
                  fontSize: widget.size.height * 0.0165,
                  fontWeight: FontWeight.w300)),
        ),
      ),
    );
  }
}
