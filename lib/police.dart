import 'package:flutter/material.dart';

class Police extends StatefulWidget {
  const Police({Key? key}) : super(key: key);

  @override
  State<Police> createState() => _PoliceState();
}

class _PoliceState extends State<Police> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Layanan Polisi"),
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
                    onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
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
                        Text("Tentang Police",
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
