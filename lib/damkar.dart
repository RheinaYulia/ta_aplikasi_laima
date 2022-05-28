import 'dart:html';
import 'package:flutter/material.dart';

class Damkar extends StatefulWidget {
  @override
  State<Damkar> createState() => _DamkarState();
}

class _DamkarState extends State<Damkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Layanan Damkar"),
        backgroundColor: Colors.white,
      ),
    );
  }
}
