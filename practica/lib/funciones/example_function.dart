import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<dynamic>> readFiel(String path) async {
  String fileString = await rootBundle.loadString('assets/data.json');
  Map<String, dynamic> json = jsonDecode(fileString);
  return json['users'];
}
