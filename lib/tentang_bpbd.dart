import 'package:flutter/material.dart';

class TentangBpbd extends StatefulWidget {
  @override
  State<TentangBpbd> createState() => _TentangBpbdState();
}

class _TentangBpbdState extends State<TentangBpbd> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "BPBD",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),  
    );
  }
}