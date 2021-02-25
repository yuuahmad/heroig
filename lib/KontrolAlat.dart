import 'package:flutter/material.dart';

class KontrolAlat extends StatefulWidget {
  KontrolAlat({Key key}) : super(key: key);

  @override
  _KontrolAlatState createState() => _KontrolAlatState();
}

class _KontrolAlatState extends State<KontrolAlat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontrol Pompa Anda'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('halaman kontrol alat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
