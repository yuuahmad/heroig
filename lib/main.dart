import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:heroig/pages/wrapper.dart';

// ini adalah main app dari aplikasi heroig itera
// tujuannya adalah untuk melakukan main function
// aplikasi hanya akan bisa diplay disini.

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // pergi ke halaman wrapper untuk menentukan apakah user sudah login atau belum
    return MaterialApp(theme: ThemeData.dark(), home: Wrapper());
  }
}
