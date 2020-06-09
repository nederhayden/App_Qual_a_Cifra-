import 'package:flutter/material.dart';

import 'components/custom_container.dart';
import 'components/custom_positioned.dart';

class Cifras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue[100],
      width: size.width,
      child: Stack(
        children: <Widget>[
          CustomPositioned(text: 'A', color: Colors.green, top: 35, left: 15),
          CustomContainer(
            top: 35,
            left: 100,
          ),
          CustomPositioned(text: 'B', color: Colors.red, top: 110, left: 15),
          CustomContainer(
            top: 110,
            left: 100,
          ),
          CustomPositioned(text: 'C', color: Colors.amber, top: 185, left: 15),
          CustomContainer(
            top: 185,
            left: 100,
          ),
          CustomPositioned(text: 'D', color: Colors.blue, top: 260, left: 15),
          CustomContainer(
            top: 260,
            left: 100,
          ),
          CustomPositioned(text: 'E', color: Colors.orange, top: 35, left: 220),
          CustomContainer(
            top: 35,
            left: 305,
          ),
          CustomPositioned(
              text: 'F', color: Colors.purple, top: 110, left: 220),
          CustomContainer(
            top: 110,
            left: 305,
          ),
          CustomPositioned(text: 'G', color: Colors.cyan, top: 185, left: 220),
          CustomContainer(
            top: 185,
            left: 305,
          ),
        ],
      ),
    );
  }
}
