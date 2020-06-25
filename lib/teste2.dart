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
        title: Text('Score ${score.length} / 7'),
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
            children: cifras.keys.map((c) {
              return Draggable<String>(
                data: c,
                child: Cifras(c: score[c] == true ? 'Teste' : c),
                feedback: Cifras(c: c),
                childWhenDragging: Cifras(c: 'VAZIO'),
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cifras.keys.map((n) => _buildDragTarget(n)).toList()
              ..shuffle(Random(seed)),
          ),
        ],
      ),
    );
  }

  Widget _buildDragTarget(n) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[n] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correto!'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(
            color: cifras[n],
            height: 80,
            width: 200,
          );
        }
      },
      onWillAccept: (data) => data == n,
      onAccept: (data) {
        setState(() {
          score[n] = true;
        });
      },
      onLeave: (data) {},
    );
  }
}

class Cifras extends StatelessWidget {
  Cifras({Key key, this.c}) : super(key: key);

  final String c;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          c,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
