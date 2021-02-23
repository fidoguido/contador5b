//Importaciones generales de librerias
import 'package:flutter/material.dart';
//Importaciones que se han generado
import 'package:contador5b/src/pages/contador_page.dart';
//import 'package:contador5b/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
