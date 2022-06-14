import 'package:flutter/material.dart';

class TentangDamkar extends StatefulWidget {
  @override
  State<TentangDamkar> createState() => _TentangDamkarState();
}

class _TentangDamkarState extends State<TentangDamkar> {

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
          "Pemadam Kebakaran",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),  
    );
  }
}