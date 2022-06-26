import 'package:flutter/material.dart';

class TentangDamkar extends StatefulWidget {
  @override
  State<TentangDamkar> createState() => _TentangDamkarState();
}

class _TentangDamkarState extends State<TentangDamkar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          tooltip: "Kembali",
          onPressed:null,
          ),
          title: Text("Pemadaman Kebakaran"),
          backgroundColor: Colors.green[700],
      ),
      body: Container(
        color: Colors.green[200],
        constraints: BoxConstraints.expand(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset('assets/images/lokdamkar.jpg',width: 400,),
              Text("Pemadam Kebakaran", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Pemadam kebakaran disingkat Damkar, Branwir (dari Bahasa Belanda Brandweer), atau PMK adalah orang atau pasukan yang bertugas memadamkan kebakaran, melakukan penyelamatan, dan menanggulangi bencana atau kejadian lainya.", textAlign: TextAlign.center,),

            ],
            
          ),
         
        ),
      ),
    ); 
  }
}