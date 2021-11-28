import 'package:flutter/material.dart';

import 'package:selectav1/pages/home.dart';
import 'package:selectav1/pages/servicios.dart';
import 'package:selectav1/pages/config.dart';
import 'package:selectav1/pages/avanzado.dart';
import 'package:selectav1/pages/guardado.dart';
import 'package:selectav1/pages/novedades.dart';
import 'package:selectav1/pages/popular.dart';
import 'package:selectav1/pages/info.dart';

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
        "/avanzado": (BuildContext context) => Avanzado(),
        "/guardado": (BuildContext context) => Guardado(),
        "/novedades": (BuildContext context) => Novedades(),
        "/popular": (BuildContext context) => Popular(),
        "/info": (BuildContext context) => Info(),
      },
      initialRoute: "/home", //Rutas
    );
  }
}
