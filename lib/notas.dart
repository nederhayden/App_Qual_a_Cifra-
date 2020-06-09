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
          CustomDraggable(text: 'Dó', left: 35, top: 25,),
          CustomDraggable(text: 'Ré', left: 165, top: 25,),
          CustomDraggable(text: 'Mi', left: 300, top: 25,),
          CustomDraggable(text: 'Fá', left: 35, top: 100,),
          CustomDraggable(text: 'Sol', left: 165, top: 100,),
          CustomDraggable(text: 'Lá', left: 300, top: 100,),
          CustomDraggable(text: 'Si', left: 165, top: 175,),
        ],
      ),
    );
  }
}
