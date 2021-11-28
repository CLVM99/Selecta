import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion'),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('hola')),
    );
  }
}
