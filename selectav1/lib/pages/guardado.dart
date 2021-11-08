import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';

class Guardado extends StatelessWidget {
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
        title: Text('Guardados'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [Text('Guardados')],
            )
          ],
        ),
      ),
      drawer: drawerMenu(context),
      endDrawer: Ajguar(),
    );
  }
}

class Ajguar extends StatelessWidget {
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
