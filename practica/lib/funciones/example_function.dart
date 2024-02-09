import 'dart:convert';
import 'modelo_usuario.dart';
import 'package:flutter/services.dart';

List<dynamic> items = [];
Future<List<dynamic>> readFiel(String path) async {
  String fileString = await rootBundle.loadString('assets/data.json');
  Map<String, dynamic> json = jsonDecode(fileString);
  return json['users'];
}
