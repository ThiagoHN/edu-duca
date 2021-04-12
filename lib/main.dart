import 'package:flutter/material.dart';
import 'package:edu_duca/screens/login.dart';
import 'package:edu_duca/screens/menu.dart';
import 'package:edu_duca/screens/exportugues.dart';
import 'package:edu_duca/screens/exmatematica.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Edu Duca',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Login.routeName,
        routes: {
          Login.routeName: (ctx) => Login(),
          Menu.routeName: (ctx) => Menu(),
          ExPortugues.routeName: (ctx) => ExPortugues(),
          ExMatematica.routeName: (ctx) => ExMatematica(),
        },
      );
    }
  }