import 'package:flutter/material.dart';

class BarNilai extends StatefulWidget {
  const BarNilai({Key key}) : super(key: key);

  @override
  _BarNilaiState createState() => _BarNilaiState();
}

class _BarNilaiState extends State<BarNilai> {
  List<double> barsatu = [100, 23, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman bar nilai'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListSaya('pertama', 100, 200, 300),
            ListSaya('kedua', 10, 23, 100),
            ListSaya('ketiga', 20, 300, 50),
            ListSaya('keempat', 200, 100, 10),
            ListSaya('kelima', 189, 90, 200),
            ListSaya('keenam', 10, 234, 25),
          ],
        ),
      ),
    );
  }
}

class ListSaya extends StatelessWidget {
  final double nilaiMin;
  final double nilaiRat;
  final double nilaiMax;
  final menit;
  ListSaya(this.menit, this.nilaiMin, this.nilaiRat, this.nilaiMax);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      height: 150,
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'bar nilai pada sepuluh menit $menit',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'nilai minimal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Container(
            height: 10,
            width: nilaiMin,
            color: Colors.red,
          ),
          Text(
            'nilai rata rata',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            height: 10,
            width: nilaiRat,
            color: Colors.orange,
          ),
          Text(
            'nilai maksimal',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            height: 10,
            width: nilaiMax,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
