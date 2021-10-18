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
        child: Column(
          children: [
            Row(
              children: [Text('Busqueda avanzada')],
            )
          ],
        ),
      ),
      drawer: drawerMenu(context),
      endDrawer: Ajbus(),
    );
  }
}

//Ajustes de busqueda
class Ajbus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: Text('Servicios'),
          onTap: () {
            Navigator.pushNamed(context, '/servicios');
          },
        ),
        ListTile(
          title: Text('Configuracion'),
          onTap: () {
            Navigator.pushNamed(context, '/config');
          },
        ),
      ],
    );
  }
}
