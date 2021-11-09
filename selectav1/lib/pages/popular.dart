import 'package:flutter/material.dart';
import 'package:selectav1/app.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular'),
      ),
      body: Container(
        child: scrollPo(),
      ),
      drawer: drawerMenu(context),
    );
  }
}

//Scroll populares
Widget scrollPo() {
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
