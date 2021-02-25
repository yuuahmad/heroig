import 'package:flutter/material.dart';

class MonitoringAlat extends StatefulWidget {
  MonitoringAlat({Key key}) : super(key: key);

  @override
  _MonitoringAlatState createState() => _MonitoringAlatState();
}

class _MonitoringAlatState extends State<MonitoringAlat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoring Alat'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('halaman monitoring alat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
