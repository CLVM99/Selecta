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
          margin: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), //poner margenes
          child: scrollAv()), //poner scroller en el cuerpo
      drawer: drawerMenu(context),
    );
  }
}

//Scroller
Widget scrollAv() {
  //crear un scroller de en cuadros
  return CustomScrollView(
    slivers: <Widget>[
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //ajustar posicion de los cuadros
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center, //centrar el texto adentro
              color: Colors.orange[400 +
                  (index *
                      100)], //crear colores uno mas oscuro del anterior y despues reiniciar
              child: Text('elemento $index'),
            );
          },
          childCount: 6, //poner seis cuadros
        ),
      )
    ],
  );
}
