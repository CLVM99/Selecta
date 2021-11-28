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
        title: Text('Guardado'),
      ),
      body: Container(
        child: scrollGu(),
      ),
      drawer: drawerMenu(context),
      endDrawer: Ajguar(context),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Ajguar(BuildContext context) {
  return ListView(
    children: [
      ListTile(
        title: Text('canciones'),
        onTap: () {},
      ),
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

Widget scrollGu() {
  return CustomScrollView(
    slivers: <Widget>[
      SliverFixedExtentList(
        itemExtent: 100,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  color: Colors.orange[100 * (index % 9)],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.music_video, size: 60),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Cancion'), Text('Artista')],
                      ),
                      Text('Album/n'),
                      Text('año')
                    ],
                  ),
                ));
          },
        ),
      ),
    ],
  );
}
