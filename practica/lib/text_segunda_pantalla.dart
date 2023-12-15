import 'package:flutter/material.dart';

import 'segunda_pantalla.dart';

class TextOtherScreen extends StatelessWidget {
  const TextOtherScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Text('prueba'),
          ),
          // IconButton(
          //   icon: Icon(Icons.two_k_sharp),
          //   iconSize: 100,
          //   color: const Color.fromARGB(255, 243, 33, 96),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       // ignore: always_specify_types
          //       MaterialPageRoute(
          //         builder: (BuildContext context) => OtherScreen(),
          //       ),
          //     );
          //   },
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                  builder: (BuildContext context) => OtherScreen(),
                ),
              );
            },
            child: Text(
              'pantalla 2',
              style: TextStyle(fontSize: 20),
            ),
          ),
          //GestureDetector(
          //  child: Text(
          //    'hello,click para un nuevo Screen',
          //    style: TextStyle(
          //      color: Colors.white70,
          //      backgroundColor: Colors.green,
          //      fontSize: 30,
          //      fontWeight: FontWeight.w900,
          //    ),
          //  ),
          //  onTap: () {
          //    Navigator.push(
          //      context,
          //      // ignore: always_specify_types
          //      MaterialPageRoute(
          //        builder: (BuildContext context) => OtherScreen(),
          //      ),
          //    );
          //  },
          // ),
        ],
      );
}
