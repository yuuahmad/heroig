// ini adalah kode main pada aplikasi heroig
// kode ini digunakan untuk melakukan routing atau pindah2 halaman
// koe ini adalah kode utama yang memuat semua anak halaman
import 'package:flutter/material.dart';
import 'package:heroig/HalamanUtama.dart';

main(List<String> args) {
  return runApp(AplikasiSaya());
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
