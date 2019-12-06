import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State {

  TextStyle _fuente25 = TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold);
  TextStyle _fuente25blue = TextStyle(fontSize: 35, color: Colors.blue, fontWeight: FontWeight.bold);
  int _conteo1 = 0;
  int _conteo2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2b2b),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Anotador de truco'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Equipo 1:', style: _fuente25blue),
            Text('$_conteo1', style:  _fuente25blue),
            Text('Equipo 2:', style: _fuente25),
            Text('$_conteo2', style:  _fuente25),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          SizedBox(width: 30.0),
          _botones('_conteo1', Colors.blue),
          Expanded(child: SizedBox()),
          _restart(),
          Expanded(child: SizedBox()),
          _botones('_conteo2', Colors.red)

        ],
      ),
    );
  }

  Widget _botones(String conteo, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              conteo == '_conteo1' ? _conteo1++ : _conteo2++;
              _conteo1 >= 30 ? _conteo1 = 30 : _conteo1 = _conteo1;
              _conteo2 >= 30 ? _conteo2 = 30 : _conteo2 = _conteo2;
            });
          },
          backgroundColor: color,
          
        ),

        SizedBox(height: 20.0),

        FloatingActionButton(child: Icon(Icons.remove), onPressed: () {
          setState(() {
            conteo == '_conteo1' ? _conteo1-- : _conteo2--;
            _conteo1 <= 0 ? _conteo1 = 0 : _conteo1 = _conteo1;
            _conteo2 <= 0 ? _conteo2 = 0 : _conteo2 = _conteo2;
          });
        }, backgroundColor: color,
        ),
        
      ],
    );
  }

  Widget _restart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          label: Text('Reiniciar'),
          onPressed: () {
          setState(() {
            _conteo1 = 0;
            _conteo2 = 0;
            });
          },
          backgroundColor: Colors.black87,
        )
      ],
    );
  } 
}