import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//import 'contador.dart';

import 'text_segunda_pantalla.dart';
import 'text_tercera_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 162, 183),
          ),
          useMaterial3: true,
        ),
        home: const Prueba(),
      );
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 83, 254, 180),
          title: Text(
            'hello my friend',
          ),
          titleTextStyle: TextStyle(
            color: const Color.fromARGB(255, 255, 59, 59),
            fontWeight: FontWeight.w900,
            fontSize: 50,
            fontStyle: FontStyle.italic,
            //height: 2,
            backgroundColor: Colors.amberAccent,
          ),
        ),
        body: Stack(
          //color: Colors.indigoAccent,
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Recycling(texto: 'lorem ipsum dolor sit ame'),

                Container(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.amber,
                    border: Border.all(
                      color: const Color.fromARGB(255, 7, 166, 239),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(
                    'Acesso a siguiente pantalla',
                    style: TextStyle(
                      color: Color.fromARGB(255, 195, 74, 141),
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                //Contador(parrafoWidget: 'prueba'),
                // ignore: always_specify_types
                //Recycling(texto: 'me escuchas?'),
                Fecha(),
                TextOtherScreen(),
                TextThreeScreen(),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.centerRight,
                height: 100,
                width: 100,
                //width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  color: const Color.fromARGB(255, 165, 126, 112),
                  border: Border.all(
                    color: Colors.deepOrangeAccent,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Text(
                  'primer container',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    backgroundColor: Colors.black38,
                    letterSpacing: 5,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class Fecha extends StatelessWidget {
  const Fecha({super.key});
  String fechaFuncion() {
    DateTime ahora = DateTime.now();
    DateFormat formato = DateFormat.yMMMd('en_US');
    String fechaFormateada = formato.format(ahora);
    return '$fechaFormateada';
  }

  @override
  Widget build(BuildContext context) => Text(fechaFuncion());
}

class Recycling extends StatelessWidget {
  const Recycling({required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(0),
        height: 60,
        width: 343,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffc2fee0), width: 1.5),
          borderRadius: BorderRadius.circular(5),
          color: const Color(
            0xff002612,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(
              Icons.check_box_rounded,
              color: Color(0xff32FC97),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                texto,
                softWrap: true,
                style: TextStyle(
                  color: Color(0xffc2fee0),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
}
