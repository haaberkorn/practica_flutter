import 'package:flutter/material.dart';

import '../funciones/example_function.dart';

class ExampleJson extends StatelessWidget {
  const ExampleJson({super.key});

  @override
  // ignore: always_specify_types
  Widget build(BuildContext context) => FutureBuilder(
        future: readFiel('assets/data.json'),
        // ignore: strict_raw_type, always_specify_types
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!);
          } else {
            return CircularProgressIndicator();
          }
        },
      );
}
