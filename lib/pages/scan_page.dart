import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  Scan({Key key}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman scan'),
      ),
    );
  }
}
