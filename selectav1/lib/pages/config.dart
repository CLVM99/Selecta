import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [Text('Notificacion de Novedades'), Checkbo()],
            )
          ],
        ),
      ),
    );
  }
}

//CHECKBOX01

/// This is the stateful widget that the main application instantiates.
class Checkbo extends StatefulWidget {
  const Checkbo({Key? key}) : super(key: key);
  @override
  State<Checkbo> createState() => _CheckboState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CheckboState extends State<Checkbo> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.grey;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
