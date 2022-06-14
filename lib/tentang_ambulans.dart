import 'package:flutter/material.dart';

class TentangAmbulans extends StatefulWidget {
  @override
  State<TentangAmbulans> createState() => _TentangAmbulansState();
}

class _TentangAmbulansState extends State<TentangAmbulans> {

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
          "Ambulans",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),  
    );
  }
}