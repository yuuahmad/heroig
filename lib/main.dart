// ini adalah kode main pada aplikasi heroig
// kode ini digunakan untuk melakukan routing atau pindah2 halaman
// koe ini adalah kode utama yang memuat semua anak halaman
import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:heroig/HalamanUtama.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
            appId:
                '1:497685752739:ios:2ffb356f1c26a030428816', //ini sudah saya ganti
            apiKey: 'AIzaSyBhmPyJxIr7NPbYFwFlsZ1pPr33c8jkwBg', //ganti
            projectId: 'heroigitera', //ini sudah saya ganti
            messagingSenderId: '497685752739', //ini sudah saya ganti
            databaseURL:
                'https://heroigitera-default-rtdb.firebaseio.com/', //ini sudah saya ganti
          )
        : FirebaseOptions(
            appId:
                '1:497685752739:android:93ab3a7bef37b2ed428816', //ini sudah saya ganti
            apiKey: 'AIzaSyBhmPyJxIr7NPbYFwFlsZ1pPr33c8jkwBg', //ganti
            messagingSenderId: '497685752739', //ini sudah saya ganti
            projectId: 'heroigitera', //ini sudah saya ganti
            databaseURL:
                'https://heroigitera-default-rtdb.firebaseio.com/', //ini sudah saya ganti
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
