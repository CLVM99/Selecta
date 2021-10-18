import 'package:flutter/material.dart';

class Avanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [Text('Busqueda avanzada')],
            )
          ],
        ),
      ),
    );
  }
}
