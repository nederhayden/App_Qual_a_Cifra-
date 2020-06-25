import 'package:flutter/material.dart';
import 'package:qual_a_cifra/teste2.dart';

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
          '/': (context) => Teste2(),
        });
  }
}
