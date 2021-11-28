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
          child: scrollAv()),
      drawer: drawerMenu(context),
    );
  }
}

//Scroller
Widget scrollAv() {
  return CustomScrollView(
    slivers: <Widget>[
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.orange[400 + (index * 100)],
              child: Text('grid item $index'),
            );
          },
          childCount: 6,
        ),
      )
    ],
  );
}
