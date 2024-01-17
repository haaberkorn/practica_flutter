import 'package:flutter/material.dart';

import '../funciones/example_function.dart';

class ExampleJson extends StatelessWidget {
  const ExampleJson({super.key});

  @override
  // ignore: always_specify_types
  Widget build(BuildContext context) => FutureBuilder(
        future: readFiel('path'),
        // ignore: strict_raw_type, always_specify_types
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data![0];
            return Text(
              'nombre:${user['nombre']} edad:${user['edad']}, casado:${user['casado']}',
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      );
}
