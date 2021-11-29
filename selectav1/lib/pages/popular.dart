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
          //Construir elementos en automatico
          (BuildContext context, int index) {
            return TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/info'); //Enviar a pagina de info
                },
                style: TextButton.styleFrom(
                  primary: Colors.white, //Color de letra blanco
                ),
                child: Container(
                  //Color de losc cuadros de la lista
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  color: Colors.orange[100 *
                      (index % 9)], //Hacer que cada uno que cambie de color
                  child: Row(
                    //Elementos que se van a ver dentro de la lista
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.music_video, size: 60), //agregar icono musical
                      Column(
                        //Agregar cancion y artista
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
