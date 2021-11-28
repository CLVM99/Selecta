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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Cancion:\nAlbum:\nArtista:\nAño:\nDiscografica:',
          textScaleFactor: 1.6,
          textAlign: TextAlign.start,
        ),
      ],
    ));
