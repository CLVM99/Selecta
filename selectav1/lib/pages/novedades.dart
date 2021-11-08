import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';

class Avanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busqueda avanzada'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text('novedades'),
      ),
      drawer: drawerMenu(context),
    );
  }
}
