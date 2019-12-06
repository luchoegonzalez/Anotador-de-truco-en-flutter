import 'package:app_contador/src/pages/conteo_widget.dart';
import 'package:flutter/material.dart';

// import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override //reescribo el metodo build que tiene StatelessWidget
  Widget build(context) { //build me dibuja el widget; context tiene la info del arbol de widgets,temas etc...
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Center(
      child: ContadorPage(),
    ),
  );
  }
}