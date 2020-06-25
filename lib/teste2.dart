import 'dart:math';

import 'package:flutter/material.dart';

class Teste2 extends StatefulWidget {
  @override
  _Teste2State createState() => _Teste2State();
}

class _Teste2State extends State<Teste2> {
  final Map<String, bool> score = {};

  final Map cifras = {
    'C': Colors.green,
    'D': Colors.yellow,
    'E': Colors.red,
    'F': Colors.grey,
    'G': Colors.purple,
    'A': Colors.brown,
    'B': Colors.cyan,
  };

  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pontuação ${score.length} / 7'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: cifras.keys.map((cifras) {
              return Draggable<String>(
                data: cifras,
                child: Cifras(cifras: score[cifras] == true ? '-' : cifras),
                feedback: Cifras(cifras: cifras),
                childWhenDragging: Cifras(cifras: 'arrastado'),
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cifras.keys.map((notas) => _buildDragTarget(notas)).toList()
              ..shuffle(Random(seed)),
          ),
        ],
      ),
    );
  }

  Widget _buildDragTarget(notas) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[notas] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correto!'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(
            child: Text('Colocar nome das notas aqui'),
            alignment: Alignment.center,
            color: cifras[notas],
            height: 80,
            width: 200,
          );
        }
      },
      onWillAccept: (data) => data == notas,
      onAccept: (data) {
        setState(() {
          score[notas] = true;
        });
      },
      onLeave: (data) {},
    );
  }
}

class Cifras extends StatelessWidget {
  Cifras({Key key, this.cifras}) : super(key: key);

  final String cifras;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          cifras,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
