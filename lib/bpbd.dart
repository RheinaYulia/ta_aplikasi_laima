import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/LokasiKantor/LokBPBD.dart';
import 'package:ta_aplikasi_laima/linkbpbd.dart';
import 'package:ta_aplikasi_laima/tentang_bpbd.dart';

class Bpbd extends StatefulWidget {
  @override
  State<Bpbd> createState() => _BpbdState();
}

class _BpbdState extends State<Bpbd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Layanan BPBD"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Linkbpbd(),
                      ),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.call_outlined,
                          color: Colors.red,
                          size: 70.0,
                        ),
                        Text("Call Now", style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 200,
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LokBPBD(),
                      ),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.map_outlined,
                          color: Colors.blue[800],
                          size: 70.0,
                        ),
                        Text("Lokasi Kantor",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 200,
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TentangBpbd(),
                      ),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.info_outline,
                          color: Colors.yellow[700],
                          size: 70.0,
                        ),
                        Text("Tentang BPBD",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
