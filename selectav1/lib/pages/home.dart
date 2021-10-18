import 'package:decorated_icon/decorated_icon.dart';
import 'package:selectav1/app.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: columnContent(),
      drawer: drawerMenu(context),
    );
  }
}

Widget columnContent() {
  return Column(
    children: [buscar, botones, popular, novedades],
  );
}

Widget buscar = Container(
    margin: EdgeInsets.all(20),
    child: Form(
        child: TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.search), hintText: 'Busca la cancion aqui'),
    )));

Widget botones = (Container(
  margin: EdgeInsets.symmetric(horizontal: 20),
  alignment: Alignment.center,
  child: Row(
    children: [guardado, BotonAvanzado()],
  ),
));

class BotonGuardado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      margin: const EdgeInsets.all(8.0),
      color: Colors.amber,
      padding: EdgeInsets.all(5),
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white),
        child: Row(
          children: [
            DecoratedIcon(
              Icons.bookmark,
              size: 50,
              shadows: [
                BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Colors.black26,
                    blurRadius: 15)
              ],
            ),
            Text('Canciones\nGuardadas',
                textScaleFactor: 1.6,
                style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                  Shadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 15,
                    color: Colors.black45,
                  )
                ]))
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/avanzado');
        },
      ),
    );
  }
}

Widget guardado = (Container(
    height: 100,
    width: 180,
    margin: const EdgeInsets.all(8.0),
    color: Colors.amber,
    padding: EdgeInsets.all(5),
    child: Center(
        child: Row(
      children: [
        DecoratedIcon(
          Icons.bookmark,
          size: 50,
          shadows: [
            BoxShadow(
                offset: Offset(1.0, 0.0), color: Colors.black26, blurRadius: 15)
          ],
        ),
        Text(
          'Canciones\nGuardadas',
          textScaleFactor: 1.6,
          style: TextStyle(fontWeight: FontWeight.bold, shadows: [
            Shadow(
              offset: Offset(1.0, 0.0),
              blurRadius: 15,
              color: Colors.black45,
            )
          ]),
        )
      ],
    ))));

// ignore: must_be_immutable
class BotonAvanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      margin: const EdgeInsets.all(8.0),
      color: Colors.amber[700],
      padding: EdgeInsets.all(5),
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white),
        child: Row(
          children: [
            DecoratedIcon(
              Icons.music_note,
              size: 50,
              shadows: [
                BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Colors.black26,
                    blurRadius: 15)
              ],
            ),
            Text('Busqueda\nAvanzada',
                textScaleFactor: 1.6,
                style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                  Shadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 15,
                    color: Colors.black45,
                  )
                ]))
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/avanzado');
        },
      ),
    );
  }
}

Widget novedades = (Container(
  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
  child: Stack(
    alignment: Alignment.center,
    children: [
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset(
          'images/01.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Text('Novedades',
          style: TextStyle(fontWeight: FontWeight.bold, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ]),
          textScaleFactor: 2.5),
    ],
  ),
));

Widget popular = (Container(
  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
  child: Stack(
    alignment: Alignment.center,
    children: [
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset(
          'images/02.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Text('Popular',
          style: TextStyle(fontWeight: FontWeight.bold, shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 3.0,
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ]),
          textScaleFactor: 2.5),
    ],
  ),
));
