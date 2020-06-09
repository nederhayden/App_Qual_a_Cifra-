import 'package:flutter/material.dart';

class CustomDraggable extends StatelessWidget {
  final double top;
  final double bottom;
  final double left;
  final double right;
  final String text;
  final int data;

  const CustomDraggable(
      {Key key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.text,
      this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Draggable(
        data: data,
        // ESTADO DE ESPERA ANTES DE ARRASTAR
        child: container(text, Colors.green[100]),
        // MOSTRA NO FUNDO ENQUANTO ESTA ARRASTANDO
        childWhenDragging: container('', Colors.black54),
        // MOSTRA O OBJETO SENDO ARRASTADO
        feedback: container(text, Colors.green[100]),
      ),
    );
  }
}

container(String text, Color color) {
  return Material(
    color: Colors.transparent,
    child: Container(
      child: Center(
          child: Text(
        '$text',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
      width: 80,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    ),
  );
}
