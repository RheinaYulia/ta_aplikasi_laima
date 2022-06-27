import 'package:flutter/material.dart';

class TentangAmbulan extends StatefulWidget {
  @override
  State<TentangAmbulan> createState() => _TentangAmbulanState();
}

class _TentangAmbulanState extends State<TentangAmbulan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambulan"),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        color: Colors.green[200],
        constraints: BoxConstraints.expand(),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset(
                'assets/images/ambulan.jpg',
                width: 400,
              ),
              Text(
                "Ambulans",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                "Ambulans adalah kendaraan yang dilengkapi peralatan medis untuk mengangkut orang sakit atau korban kecelakaan. Istilah Ambulans digunakan untuk menerangkan kendaraan yang digunakan untuk membawa peralatan medis kepada pasien di luar rumah sakit atau memindahkan pasien ke rumah sakit lain untuk perawatan lebih lanjut. Secara eksterior, kendaraan ini dilengkapi dengan sirene dan lampu rotator darurat (biasanya berwarna merah atau merah biru) agar dapat menembus kemacetan lalu lintas.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
