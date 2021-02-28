import 'package:flutter/material.dart';
import 'package:heroig/pages/scan_page.dart';
import 'auth_services.dart';
import 'package:provider/provider.dart';

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
            Text("ini halaman utama"),
            RaisedButton(
              onPressed: () {
                context.read<AuthServices>().signOut();
              },
              child: Text("Sign out"),
            ),
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
                icon: Icons.contacts,
                text: 'Contacts',
                onTap: () {
                  _pushPage(context, Scan());
                }),
            _createDrawerItem(
                icon: Icons.event,
                text: 'Events',
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Scan()));
                }),
            _createDrawerItem(
                icon: Icons.note,
                text: 'Notes',
                onTap: () {
                  Navigator.pop(context);
                }),
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
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}
