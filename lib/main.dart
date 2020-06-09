import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(QualACifra());
}

class QualACifra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Qual a cifra',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // ROTA INICIAL
        initialRoute: '/',
        // DEFINE AS ROTAS DAS PAGINAS
        routes: {
          '/': (context) => Home(),
        });
  }
}
