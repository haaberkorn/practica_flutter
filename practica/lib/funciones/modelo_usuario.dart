import 'dart:ffi';
import 'package:practica/main.dart';
import 'example_function.dart';

class ModeloUser {
  ModeloUser({
    required this.nombre,
    required this.edad,
    required this.casado,
    required this.pais,
  });
  String nombre;
  int edad;
  bool casado;
  String pais;
}
