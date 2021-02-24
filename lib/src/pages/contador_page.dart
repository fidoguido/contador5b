import 'package:flutter/material.dart';

//Define al Widget
class ContadorPage extends StatefulWidget {
  @override //_Se estable de forma privada la funcion
  _ContadorPageState createState() => _ContadorPageState();
}

//Define el Estado
class _ContadorPageState extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 30.0);
  int conteo = 10;

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
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton(
          onPressed: _disminuir,
          child: Icon(Icons.remove),
        ),
        Expanded(
          child: SizedBox(
            width: 20.0,
          ),
        ),
        FloatingActionButton(
          onPressed: _pornerEnCero,
          child: Icon(Icons.exposure_zero),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      conteo = conteo + 1;
    });
  }

  void _disminuir() {
    setState(() {
      conteo--;
    });
  }

  void _pornerEnCero() {
    setState(() {
      conteo = 0;
    });
  }
}
