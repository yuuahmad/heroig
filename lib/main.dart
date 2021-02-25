// ini adalah kode main pada aplikasi heroig
// kode ini digunakan untuk melakukan routing atau pindah2 halaman
// koe ini adalah kode utama yang memuat semua anak halaman
import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:flutter/material.dart';
import 'package:heroig/HalamanUtama.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
            appId: '1:297855924061:ios:c6de2b69b03a5be8',
            apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
            projectId: 'flutter-firebase-plugins',
            messagingSenderId: '297855924061',
            databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
          )
        : FirebaseOptions(
            appId: '1:297855924061:android:669871c998cc21bd',
            apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
            messagingSenderId: '297855924061',
            projectId: 'flutter-firebase-plugins',
            databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
          ),
  );
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatefulWidget {
  AplikasiSaya({Key key}) : super(key: key);

  @override
  _AplikasiSayaState createState() => _AplikasiSayaState();
}

class _AplikasiSayaState extends State<AplikasiSaya> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main app heroig',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HalamanUtama(),
    );
  }
}
