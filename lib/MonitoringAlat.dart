import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MonitoringAlat extends StatefulWidget {
  MonitoringAlat({this.app});
  final FirebaseApp app;

  @override
  _MonitoringAlatState createState() => _MonitoringAlatState();
}

class _MonitoringAlatState extends State<MonitoringAlat> {
  int mode = 1;

  int _servo;
  bool _relay1;
  bool _relay2;
  StreamSubscription<Event> _servoSubs;
  StreamSubscription<Event> _relay1Subs;
  StreamSubscription<Event> _relay2Subs;
  DatabaseReference _servoRef;
  DatabaseReference _relay1Ref;
  DatabaseReference _relay2Ref;

  DatabaseError _error;

  @override
  void initState() {
    super.initState();
    _servoRef = FirebaseDatabase.instance.reference().child('servo');
    _relay1Ref = FirebaseDatabase.instance.reference().child('relay1');
    _relay2Ref = FirebaseDatabase.instance.reference().child('relay2');
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    database.reference().child('relay1').once().then((DataSnapshot snapshot) {
      print('berhasil terkoneksi ke relay1 dan baca ${snapshot.value}');
    });
    database.reference().child('relay2').once().then((DataSnapshot snapshot) {
      print('berhasil terkoneksi ke relay2 dan baca ${snapshot.value}');
    });
    database.reference().child('servo').once().then((DataSnapshot snapshot) {
      print('berhasil terkoneksi ke servo dan baca ${snapshot.value}');
    });
    database.setPersistenceEnabled(true);
    database.setPersistenceCacheSizeBytes(10000000);

    _servoSubs = _servoRef.onValue.listen((Event event) {
      setState(() {
        _error = null;
        _servo = event.snapshot.value ?? 0;
      });
    }, onError: (Object o) {
      final DatabaseError error = o;
      setState(() {
        _error = error;
      });
    });

    _relay1Subs = _relay1Ref.onValue.listen((Event event) {
      setState(() {
        _error = null;
        _relay1 = event.snapshot.value ?? 0;
      });
    }, onError: (Object o) {
      final DatabaseError error = o;
      setState(() {
        _error = error;
      });
    });

    _relay2Subs = _relay2Ref.onValue.listen((Event event) {
      setState(() {
        _error = null;
        _relay2 = event.snapshot.value ?? 0;
      });
    }, onError: (Object o) {
      final DatabaseError error = o;
      setState(() {
        _error = error;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kontrol Alat'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('halaman kontrol alat'),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: _error == null
                          ? Text('keadaan relay1 = $_relay1')
                          : Text(
                              'Error retrieving button tap count:\n${_error.message}',
                            ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      child: RaisedButton(
                        child: Text("ubah nilai"),
                        onPressed: () {
                          setState(() {
                            if (_relay1 == false) {
                              _relay1Ref.set(true);
                            } else {
                              _relay1Ref.set(false);
                            }
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: _error == null
                          ? Text('keadaan relay2 = $_relay2')
                          : Text(
                              'Error retrieving button tap count:\n${_error.message}',
                            ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      child: RaisedButton(
                        child: Text("ubah nilai"),
                        onPressed: () {
                          setState(() {
                            if (_relay2 == false) {
                              _relay2Ref.set(true);
                            } else {
                              _relay2Ref.set(false);
                            }
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: _error == null
                          ? Text('nilai servo = $_servo mode $mode')
                          : Text(
                              'Error retrieving button tap count:\n${_error.message}',
                            ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      child: RaisedButton(
                        child: Text("ubah nilai"),
                        onPressed: () {
                          setState(() {
                            if (mode == 1) {
                              mode = 2;
                              _servoRef.set(90);
                            } else if (mode == 2) {
                              mode = 3;
                              _servoRef.set(180);
                            } else {
                              mode = 1;
                              _servoRef.set(0);
                            }
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
