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

//CUERPO junta todos los elementos en un solo Widget
Widget columnContent() {
  return Column(
    children: [buscar, botones, BotonNovedades(), BotonPopular()],
  );
}

//BUSCADOR Solo se puede poner texto
Widget buscar = Container(
    margin: EdgeInsets.all(20),
    child: Form(
        //crea un form para poner texto
        child: TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.search), hintText: 'Busca la cancion aqui'),
    )));

//Hilera de botones. Pone los botones un una sola hilera
Widget botones = (SafeArea(
  minimum: EdgeInsets.only(left: 5),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [BotonGuardado(), BotonAvanzado()],
  ),
));

//Boton Guardado. Boton con texto e icono
class BotonGuardado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 170,
      margin: const EdgeInsets.all(8.0), //pone margen
      color: Colors.amber, //color del boton
      padding: EdgeInsets.all(2),
      child: TextButton(
        //boton
        style: TextButton.styleFrom(primary: Colors.white),
        child: Row(
          children: [
            DecoratedIcon(
              //Intertar icono decoradp
              Icons.bookmark, //icono de guardado
              size: 50,
              shadows: [
                //añadir sombra al icono
                BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Colors.black26,
                    blurRadius: 15)
              ],
            ),
            Text('Canciones\nGuardadas',
                //Le puse letra negrita con sombra
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                  Shadow(
                    //Ajustes de la sombra
                    offset: Offset(0.0, 1.0),
                    blurRadius: 15,
                    color: Colors.black45,
                  )
                ]))
          ],
        ),
        onPressed: () {
          //envia boton al apartado de lista
          Navigator.pushNamed(context, '/guardado');
        },
      ),
    );
  }
}

// ignore: must_be_immutable
//Boton Avanzado
class BotonAvanzado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Esto construye el rectangulo que uso para boton
      height: 100,
      width: 170,
      margin: const EdgeInsets.all(8.0),
      color: Colors.amber[700],
      padding: EdgeInsets.all(5),
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white), //color de la letra
        child: Row(
          children: [
            DecoratedIcon(
              //añadir icono de decorado
              Icons.music_note, //icono
              size: 50,
              shadows: [
                //añadir sombra al icono
                BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Colors.black26,
                    blurRadius: 15)
              ],
            ), //Texto con estilo
            Text('Busqueda\nAvanzada',
                textScaleFactor: 1.3,
                //Le puse letra negrita con sombra
                style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                  Shadow(
                    //Ajustes de la sombra
                    offset: Offset(0.0, 1.0),
                    blurRadius: 15,
                    color: Colors.black45,
                  )
                ]))
          ],
        ),
        onPressed: () {
          //envia boton al apartado de lista
          Navigator.pushNamed(context, '/avanzado');
        },
      ),
    );
  }
}

//Boton novedades
class BotonNovedades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          child: Stack(
            //Esto hace que el texto se ponga sobre la imagen
            alignment: Alignment.center,
            children: [
              //esto recorta la imagen para que se ajuste a la pantalla
              AspectRatio(
                aspectRatio: 2 / 1,
                child: Image.asset(
                  //subir archivo desde carpeta
                  'images/01.jpg',
                  fit: BoxFit.cover,
                  scale: 2 / 3,
                ),
              ),
              Text('Novedades', //texto
                  style: TextStyle(
                      //estilo del texto
                      fontWeight: FontWeight.bold,
                      shadows: [
                        //añadir sombra
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                      ]),
                  textScaleFactor: 2.5),
            ],
          ),
          onPressed: () {
            //enviar a novedades
            Navigator.pushNamed(context, '/novedades');
          },
        ));
  }
}

//Boton popular
class BotonPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white, //poner las letras color blanco
          ),
          child: Stack(
            //Esto hace que el texto se ponga sobre la imagen
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: 2 / 1, //recorta la imagen
                child: Image.asset(
                  'images/02.jpg',
                  fit: BoxFit.fitWidth, //ajusta la imagen
                  scale: 2 / 3, //reduce el tamaño de la imagen
                ),
              ),
              Text('Popular',
                  //estilo del texto
                  style: TextStyle(fontWeight: FontWeight.bold, shadows: [
                    Shadow(
                      //añade sombra
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ]),
                  textScaleFactor: 2.5),
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(
                context, '/popular'); //enviar al apartado popular
          },
        ));
  }
}
