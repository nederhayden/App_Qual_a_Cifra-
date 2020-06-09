import 'package:flutter/material.dart';

class CustomPositioned extends StatelessWidget {
  final Color color;
  final double top;
  final double bottom;
  final double left;
  final double right;
  final String text;

  const CustomPositioned(
      {Key key,
      this.color,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        child: Container(
          width: 80,
          height: 60,
          child: Center(
              child: Text(
            '$text',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          
        ));
  }
}
