import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion'),
        ),
        body: Column(
          children: [coverArt, musicData],
        ));
  }
}

//CARATULA
Widget coverArt = Container(
  alignment: Alignment.center,
  margin: EdgeInsets.all(20),
  child: Image.asset(
    'images/03.jpg',
    fit: BoxFit.cover,
    scale: 1 / 3,
    width: 300,
    height: 300,
  ),
);

Widget musicData = Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Column(
      children: [
        Text(
          'Cancion',
          textScaleFactor: 1.6,
        ),
        Text(
          'Album',
          textScaleFactor: 1.6,
        ),
        Text(
          'Artista',
          textScaleFactor: 1.6,
        ),
        Text(
          'Año',
          textScaleFactor: 1.6,
        ),
        Text(
          'Discografica',
          textScaleFactor: 1.6,
        ),
      ],
    ));
