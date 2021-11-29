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
                      Text('Album'),
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
