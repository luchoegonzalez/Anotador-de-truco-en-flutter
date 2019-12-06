import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final fuente25 = new TextStyle(fontSize: 25, color: Colors.red);
  final conteo1 = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de truco'),
        centerTitle: true,
        toolbarOpacity: 0.6,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de clicks:', style: fuente25),
            Text('$conteo1', style:  fuente25),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print('p'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}