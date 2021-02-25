import 'package:flutter/material.dart';

class HalamanLogin extends StatefulWidget {
  HalamanLogin({Key key}) : super(key: key);

  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login dan Mulai'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('selamat datang di halaman login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
