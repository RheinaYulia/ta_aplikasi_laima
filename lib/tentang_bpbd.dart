import 'package:flutter/material.dart';

class TentangBpbd extends StatefulWidget {
  @override
  State<TentangBpbd> createState() => _TentangBpbdState();
}

class _TentangBpbdState extends State<TentangBpbd> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          tooltip: "Kembali",
          onPressed:null,
          ),
          title: Text("BPBD"),
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
              Image.asset('assets/images/lokbpbd.jpg',width: 400,),
              Text("BPBD (Badan Penanggulangan Bencana Daerah)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Badan Penanggulangan Bencana Daerah (BPBD) merupakan Lembaga Pemerintah non-departemen yang melaksanakan tugas penanggulangan bencana di daerah baik Provinsi maupun Kabupaten/ kota dengan berpedoman pada kebijakan yang di tetapkan oleh Badan Nasional Penanggulangan Bencana.", textAlign: TextAlign.center,),

            ],
            
          ),
         
        ),
      ),
    ); 
  }
}