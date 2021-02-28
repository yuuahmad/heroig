import 'package:flutter/material.dart';
import 'autentifikasi/auth.dart';
// ini adalah halaman wrapper. tujuannya adalah untuk menentukan apakah user sudah masuk atau belum

// jika user sudah masuk, tampilkan halaman fitur-fitur app pada user
// jika user belum masuk, tampilkan halaman register.
// tujuan langsung ke register adalah agar user dapat membuat akun terlebih dahulu sebelum login.
class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthExampleApp();
  }
}
