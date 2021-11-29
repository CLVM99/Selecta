import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//DRAWER MENU
Widget drawerMenu(BuildContext context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        //Header del menu
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Container(
            child: Text(
          'Menu',
          textScaleFactor: 1.5,
        )),
      ),
      //Botones para ajustes
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
