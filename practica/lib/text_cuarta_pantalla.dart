import 'package:flutter/material.dart';

import 'cuarta_pantalla.dart';

class TextFourScreen extends StatelessWidget {
  const TextFourScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                  builder: (BuildContext context) => FourScreen(),
                ),
              );
            },
            child: Text(
              'cuarta pantalla',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      );
}
