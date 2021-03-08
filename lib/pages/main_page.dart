import 'package:flutter/material.dart';
import 'package:heroig/pages/apisaya_page.dart';
import 'package:heroig/pages/control_page.dart';
import 'package:heroig/pages/latapi_page.dart';
import 'package:heroig/pages/monitor_page.dart';
import 'package:heroig/pages/scan_page.dart';
import 'package:heroig/pages/statistics_page.dart';

import 'package:provider/provider.dart';
import 'package:heroig/services/auth_services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("selamat datang di halaman utama\n\nheroig app"),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
                icon: Icons.camera,
                text: 'Scan Alat',
                onTap: () {
                  _pushPage(context, Scan());
                }),
            _createDrawerItem(
                icon: Icons.remove_red_eye,
                text: 'Monitor Alat',
                onTap: () {
                  _pushPage(context, Monitor());
                }),
            _createDrawerItem(
                icon: Icons.switch_left,
                text: 'Kontrol Alat',
                onTap: () {
                  _pushPage(context, Control());
                }),
            _createDrawerItem(
                icon: Icons.bar_chart,
                text: 'Statistik Penggunaan',
                onTap: () {
                  _pushPage(context, Statistic());
                }),
            _createDrawerItem(
                icon: Icons.wysiwyg_sharp,
                text: 'Latihan Api',
                onTap: () {
                  _pushPage(context, Latapi());
                }),
            _createDrawerItem(
                icon: Icons.wysiwyg_sharp,
                text: 'Api Heroig',
                onTap: () {
                  _pushPage(context, ApiSaya());
                }),
            Divider(),
            _createDrawerItem(
                icon: Icons.outbox,
                text: 'Keluar Akun',
                onTap: () {
                  context.read<AuthServices>().signOut();
                })
          ],
        ),
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Center(
          child: Text(
        'Menu Heroig',
        style: TextStyle(fontSize: 30),
      )),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

void _pushPage(BuildContext context, Widget page) {
  Navigator.of(context).pop();
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}
