import 'package:flutter/material.dart';
import 'package:flutter_coronavirusinfo/routes/route_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coronavirus Updates',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MainRoute(),
    );
  }
}