import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({
    required this.parrafoWidget,
    super.key,
  });
  final String parrafoWidget;
  @override
  State<Contador> createState() => _ContadorState(parrafoState: parrafoWidget);
}

class _ContadorState extends State<Contador> {
  _ContadorState({
    required this.parrafoState,
  });
  final String parrafoState;
  int count = 0;

  void incremetar() {
    setState(() {
      count++;
    });
  }

  void decrementar() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Image.asset(
            'assets/una-taza-de-javascript.png',
          ),
          Text(
            'Numero',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '$count',
            style: TextStyle(fontSize: 30),
          ),
          Text('${widget.parrafoWidget}'),
          Text('${widget.parrafoWidget}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  incremetar();
                },
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.cyan,
                  size: 100,
                ),
              ),
              IconButton(
                onPressed: () {
                  decrementar();
                },
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.amber,
                  size: 100,
                ),
              ),
            ],
          ),
        ],
      );
}
