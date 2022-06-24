import 'package:flutter/material.dart';

class TentangPolisi extends StatefulWidget {
  @override
  State<TentangPolisi> createState() => _TentangPolisiState();
}

class _TentangPolisiState extends State<TentangPolisi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          tooltip: "Kembali",
          onPressed:null,
          ),
          title: Text("Polisi"),
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
              Image.asset('assets/images/lokpolice1.jpg',width: 400,),
              Text("Polisi/Kepolisian", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Polisi adalah suatu pranata umum sipil yang menjaga ketertiban dan keamanan di seluruh wilayah negara. Kepolisian adalah salah satu lembaga penting yang memainkan tugas utama sebagai penjaga keamanan dan ketertiban dan sehingga lembaga kepolisian ada di seluruh negara berdaulat.", textAlign: TextAlign.center,),

            ],
            
          ),
         
        ),
      ),
    ); 
  }
}