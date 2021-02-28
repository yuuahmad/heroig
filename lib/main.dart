import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:heroig/pages/main_page.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Heroig App", home: Home());
  }
}
