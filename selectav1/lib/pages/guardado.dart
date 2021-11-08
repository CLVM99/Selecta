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

Widget scrollGu() {
  return CustomScrollView(
    slivers: <Widget>[
      SliverFixedExtentList(
        itemExtent: 100,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.orange[100 * (index % 9)],
              child: Text('List Item $index'),
            );
          },
        ),
      ),
    ],
  );
}
