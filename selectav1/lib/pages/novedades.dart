import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';

class Novedades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novedades'),
      ),
      body: Container(
        child: scrollNo(),
      ),
      drawer: drawerMenu(context),
    );
  }
}

//Scroll novedades
Widget scrollNo() {
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
