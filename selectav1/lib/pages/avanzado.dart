import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';
import 'package:decorated_icon/decorated_icon.dart';

class Avanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
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
          title: Text('artistas'),
          onTap: () {},
        ),
        ListTile(
          title: Text('albumes'),
          onTap: () {},
        ),
        ListTile(
          title: Text('disqueras'),
          onTap: () {},
        ),
      ],
    );
  }
}

Widget columnContent() {
  return Column(
    children: [],
  );
}

class BotonAvanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.amber[700],
      padding: EdgeInsets.all(5),
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white),
        child: Row(
          children: [
            DecoratedIcon(
              Icons.music_note,
              size: 50,
              shadows: [
                BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Colors.black26,
                    blurRadius: 15)
              ],
            ),
            Text('Albumes',
                textScaleFactor: 1.6,
                style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                  Shadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 15,
                    color: Colors.black45,
                  )
                ]))
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/avanzado');
        },
      ),
    );
  }
}
