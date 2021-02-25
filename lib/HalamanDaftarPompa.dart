import 'package:flutter/material.dart';

class HalamanTambahPompa extends StatefulWidget {
  HalamanTambahPompa({Key key}) : super(key: key);

  @override
  _HalamanTambahPompaState createState() => _HalamanTambahPompaState();
}

class _HalamanTambahPompaState extends State<HalamanTambahPompa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Pompa Anda'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('ini adalah halaman tambah pompa'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
