import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layar home'),
      ),
      body: Container(
        child: Text('ini adalah layar home saya'),
      ),
    );
  }
}
