import 'package:flutter/material.dart';

import 'components/custom_draggable.dart';

class Notas extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue[400],
      width: size.width,
      child: Stack(
        children: <Widget>[
          CustomDraggable(data: 1, text: 'Dó', left: 35, top: 25,),
          CustomDraggable(data: 2, text: 'Ré', left: 165, top: 25,),
          CustomDraggable(data: 3, text: 'Mi', left: 300, top: 25,),
          CustomDraggable(data: 4, text: 'Fá', left: 35, top: 100,),
          CustomDraggable(data: 5, text: 'Sol', left: 165, top: 100,),
          CustomDraggable(data: 6, text: 'Lá', left: 300, top: 100,),
          CustomDraggable(data: 7, text: 'Si', left: 165, top: 175,),
        ],
      ),
    );
  }
}
