import 'package:flutter/material.dart';

class TentangPln extends StatefulWidget {
  @override
  State<TentangPln> createState() => _TentangPlnState();
}
//coba
class _TentangPlnState extends State<TentangPln> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          tooltip: "Kembali",
          onPressed:null,
          ),
          title: Text("PLN"),
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
              Image.asset('assets/images/PLNMalang.jpg',width: 400,),
              Text("PLN (Perusahaan Listrik Negara)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
              Text("PT. PLN (Persero) merupakan suatu badan usaha milik negara (BUMN) dibidang kelistrikan yang melayani masyarakat diseluruh nusantara, bertekad untuk memberikan pelayanan jasa ketenagalistrikan yang terbaik dan memenuhi standar ketenagalistrikan yang dapat diterima di dunia internasional.", textAlign: TextAlign.center,),

            ],
            
          ),
         
        ),
      ),
    ); 
  }
}