import 'package:flutter/material.dart';

import 'cifras.dart';
import 'notas.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Cifras()),
          Expanded(flex: 1, child: Notas()),
        ],
      ),
    );
  }
}

