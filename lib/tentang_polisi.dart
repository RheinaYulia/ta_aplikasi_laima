import 'package:flutter/material.dart';

class TentangPolisi extends StatefulWidget {
  @override
  State<TentangPolisi> createState() => _TentangPolisiState();
}

class _TentangPolisiState extends State<TentangPolisi> {

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
          "Polisi Kota Malang",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),  
    );
  }
}