import 'package:elementary_math/Home.dart';
import 'package:elementary_math/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'Tacos App',
      home: Home(),
    );
  }
}
