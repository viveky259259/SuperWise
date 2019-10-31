import 'package:flutter/material.dart';
import 'Dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperWise',
      theme: ThemeData(
              primarySwatch: Colors.grey,
      ),
      home: new Dashboard(),
      routes: {
        '/Dasboard':(context) => new Dashboard(),
      }
    );
  }
}
