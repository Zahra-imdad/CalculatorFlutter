import 'package:flutter/material.dart';
import 'package:calculator_flutter/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new homePage(),
    );
  }
}

