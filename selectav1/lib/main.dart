import 'package:flutter/material.dart';

import 'package:selectav1/pages/home.dart';
import 'package:selectav1/pages/servicios.dart';
import 'package:selectav1/pages/config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Selecta',
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => Home(),
        "/servicios": (BuildContext context) => Servicios(),
        "/config": (BuildContext context) => Configuracion(),
      },
      initialRoute: "/home", //Rutas
    );
  }
}
