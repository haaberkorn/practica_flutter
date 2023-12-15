import 'package:flutter/material.dart';

import 'tercera_pantalla.dart';

class TextThreeScreen extends StatelessWidget {
  const TextThreeScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                  builder: (BuildContext context) => ThreeScreen(),
                ),
              );
            },
            child: Text('pantalla 3'),
          ),
          GestureDetector(
            child: Text(
              'Hello Click para Screen 3',
              style: TextStyle(
                backgroundColor: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                  builder: (BuildContext context) => ThreeScreen(),
                ),
              );
            },
          ),
        ],
      );
}
