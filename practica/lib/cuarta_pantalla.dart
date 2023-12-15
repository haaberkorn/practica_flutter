import 'package:flutter/material.dart';

import 'widgets/example_json.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            '4 pantalla',
          ),
        ),
        body: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'pantalla 3',
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 255, 80, 64),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Escribi tu nombre',
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Escribe el numero',
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              elevation: 10,
              backgroundColor: Colors.amber,
              child: Icon(Icons.add),
            ),
            ExampleJson(),
          ],
        ),
      );
}
