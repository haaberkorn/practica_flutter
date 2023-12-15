import 'dart:convert';
import 'dart:io';

Future<dynamic> readFiel(String path) async {
  File file = File('assets/data.json');
  String fileString = await file.readAsString();
  Map<String, dynamic> json = jsonDecode(fileString);
  return json['users'][0];
}
