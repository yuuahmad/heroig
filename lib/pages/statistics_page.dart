import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  Statistic({Key key}) : super(key: key);

  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman Statistic'),
      ),
    );
  }
}
