import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double top;
  final double bottom;
  final double left;
  final double right;

  const CustomContainer({Key key, this.top, this.bottom, this.left, this.right})
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
        decoration: BoxDecoration(
          color: Colors.black54,
          border: Border.all(),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
