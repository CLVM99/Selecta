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
        child: scrollNo(), //Scroller
      ),
      drawer: drawerMenu(context), //Menu del drawer
    );
  }
}

//Scroll novedades
Widget scrollNo() {
  return CustomScrollView(
    slivers: <Widget>[
      SliverFixedExtentList(
        //lista tipo sliver
        itemExtent: 100, //tamaño del card
        delegate: SliverChildBuilderDelegate(
          //construir en automatico
          (BuildContext context, int index) {
            return TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/info'); //enviar a info
                },
                style: TextButton.styleFrom(
                  //Color de letra
                  primary: Colors.white,
                ),
                child: Container(
                  //Contenedor
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  color: Colors.orange[100 * (index % 9)],
                  child: Row(
                    //datos de la lista
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.music_video, size: 60), //Caratula
                      Column(
                        //Acomodar la info de la lista
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
