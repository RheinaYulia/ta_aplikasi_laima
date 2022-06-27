import 'package:flutter/material.dart';

class TentangLaima extends StatefulWidget {
  @override
  State<TentangLaima> createState() => _TentangLaimaState();
}

class _TentangLaimaState extends State<TentangLaima> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          tooltip: "Kembali",
          onPressed:null,
          ),
          title: Text("LAIMA"),
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
              Image.asset('assets/images/LAIMA.png',width: 400,),
              Text("LAIMA (Layanan Masyarakat Kota Malang)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Aplikasi LAIMA merupakan aplikasi pelayanan publik Kota Malang dalam satu portal yang berbasis android.", textAlign: TextAlign.center,),

            ],
            
          ),
         
        ),
      ),
    ); 
  }
}