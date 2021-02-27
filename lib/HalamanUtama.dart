import 'package:flutter/material.dart';
import 'package:heroig/BarNilai.dart';
import 'package:heroig/KontrolAlat.dart';
import 'package:heroig/MonitoringAlat.dart';

class HalamanUtama extends StatefulWidget {
  HalamanUtama({Key key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini halaman utama heroig",
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Pompa Rumah Pak Yusuf',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => KontrolAlat()));
                  },
                  leading: Icon(Icons.api),
                  title: Text('Kontrol Alat'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => MonitoringAlat()));
                  },
                  leading: Icon(Icons.tv),
                  title: Text('Monitoring Alat'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => BarNilai()));
                  },
                  leading: Icon(Icons.bar_chart),
                  title: Text('Bar Nilai'),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Heroig App"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('selamat datang di aplikasi heroig'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Text(''),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
