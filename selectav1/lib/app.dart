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
      ListTile(
        title: Text('Home'),
        onTap: () {
          Navigator.pushNamed(context, '/home');
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: Text('Servicios'),
        onTap: () {
          Navigator.pushNamed(context, '/servicios');
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: Text('Configuracion'),
        onTap: () {
          Navigator.pushNamed(context, '/config');
          Navigator.pop(context);
        },
      ),
    ],
  );
}
