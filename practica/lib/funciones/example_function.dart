import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modelo_usuario.dart';

List<dynamic> items = [];
Future<List<dynamic>> readFile(String path) async {
  String fileString = await rootBundle.loadString('assets/data.json');
  Map<String, dynamic> json = jsonDecode(fileString);
  //return json['users'];
  List<dynamic> userLists = json['users'];
  List<ModeloUser> elemeList = userLists
      .map(
        (userList) => ModeloUser(
          nombre: userList['nombre'],
          edad: userList['edad'],
          casado: userList['casado'],
          pais: userList['pais'],
        ),
      )
      .toList();

  return elemeList;
}
