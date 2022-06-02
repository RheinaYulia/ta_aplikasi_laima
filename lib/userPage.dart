import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/main.dart';

class UserPage extends StatelessWidget {
  UserPage({this.username});

  final String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text("Dashboard Laima"),
      ),
    );
  }
}
