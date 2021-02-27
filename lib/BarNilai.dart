import 'package:flutter/material.dart';

class BarNilai extends StatelessWidget {
  const BarNilai({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman bar nilai'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListSaya('pertama', 100),
            ListSaya('kedua', 10),
            ListSaya('ketiga', 20),
            ListSaya('keempat', 200),
            ListSaya('kelima', 189),
            ListSaya('keenam', 10),
          ],
        ),
      ),
    );
  }
}

class ListSaya extends StatelessWidget {
  final double nilailebar;
  final menit;
  ListSaya(this.menit, this.nilailebar);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      height: 150,
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'bar nilai pada menit $menit',
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
            width: nilailebar,
            color: Colors.red,
          ),
          Text(
            'nilai rata rata',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            height: 10,
            width: nilailebar,
            color: Colors.orange,
          ),
          Text(
            'nilai maksimal',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            height: 10,
            width: nilailebar,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
