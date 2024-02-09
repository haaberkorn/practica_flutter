import 'dart:ffi';

class ModeloUser {
  ModeloUser({
    required this.nombre,
    required this.edad,
    required this.casado,
    required this.pais,
  });
  String nombre;
  int edad;
  Bool casado;
  String pais;
}
