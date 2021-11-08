import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Widget drawerMenu(BuildContext context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: EdgeInsets.all(5),
            child: Text(
              'Menu',
              textScaleFactor: 1.5,
            )),
      ),
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
