import 'dart:convert';
import 'package:flutter/services.dart';
import 'modelo_usuario.dart';

List<dynamic> items = [];
Future<List<dynamic>> readFile(String path) async {
  String fileString = await rootBundle.loadString('assets/data.json');
  Map<String, dynamic> json = jsonDecode(fileString);
  return json['users'];
}

void recorrido() {}
