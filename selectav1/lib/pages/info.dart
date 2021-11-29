import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion'),
        ),
        body: Column(
          children: [coverArt, musicData, links],
        ));
  }
}

//CARATULA
//Agregaria poner la caratula de un disco
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

//DATOS
Widget musicData = Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Column(
      //añade lo que seria la infotmacion
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Cancion:\nAlbum:\nArtista:\nAño:\nDiscografica:',
          textScaleFactor: 1.6,
          textAlign: TextAlign.start,
        ),
      ],
    ));

//pone el tamaño de la imagen, medio flojera tener que poner los datos uno por uno
double imgsize = 50;

//ENLACES Pone imagenes que se supone que tendrian un enlace a servicios de streaming
Widget links = Container(
    child: Column(
  children: [
    Container(
      margin: EdgeInsets.all(15),
      child: Text('Enlaces'),
    ),
    Row(
      //Hilera con los enlaces
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          //pone una imagen
          child: Image.asset(
            'images/spotify.png',
            width: imgsize,
            height: imgsize,
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/itunes.png',
            width: imgsize,
            height: imgsize,
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/youtube.png',
            width: imgsize,
            height: imgsize,
          ),
        ),
      ],
    ),
  ],
));
