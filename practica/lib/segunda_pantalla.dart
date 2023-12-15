import 'package:flutter/material.dart';

import 'text_tercera_pantalla.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('titulo del navbar de la segunda pantalla'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('pantalla 1'),
            ),
            GestureDetector(
              child: Text(
                'Devolver Primer Screen',
                style: TextStyle(
                  backgroundColor: const Color.fromARGB(255, 28, 7, 255),
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            TextThreeScreen(),
          ],
        ),
      );
}
