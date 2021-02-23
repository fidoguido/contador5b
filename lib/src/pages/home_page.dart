import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30.0);
  int conteo = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Cantidad de clicks',
              style: estiloTexto,
            ),
            Text(
              //conteo.toString(),
              '$conteo',
              style: estiloTexto,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 30.0,
          ),
          FloatingActionButton(
            onPressed: () {
              conteo = conteo + 1;
              //conteo++;
              print(conteo);
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.remove),
          ),
          Expanded(
            child: SizedBox(
              width: 20.0,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.exposure_zero),
          ),
        ],
      ),
    );
  }
}
