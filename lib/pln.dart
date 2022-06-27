import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/LokasiKantor/LokPLN.dart';
import 'package:ta_aplikasi_laima/linkpln.dart';
import 'package:ta_aplikasi_laima/tentang_pln.dart';

class PLN extends StatefulWidget {
  const PLN({Key? key}) : super(key: key);

  @override
  State<PLN> createState() => _PLNState();
}

class _PLNState extends State<PLN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Layanan PLN"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 350,
                height: 200,
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LinkPLN(),
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
                        builder: (context) => LokPLN(),
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
                        builder: (context) => TentangPln(),
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
                        Text("Tentang PLN",
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
