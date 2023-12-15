import 'package:flutter/material.dart';

import 'contador.dart';
import 'text_cuarta_pantalla.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Tercera Pantalla'),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: <Widget>[
            Contador(parrafoWidget: 'prueba del contador'),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('segunda pantalla'),
            ),
            GestureDetector(
              child: Text(
                'Tocar Para ir al 2do Screen',
                style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            TextFourScreen(),
          ],
        ),
      );
}
