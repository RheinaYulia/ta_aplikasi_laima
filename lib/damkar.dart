import 'dart:html';
import 'package:flutter/material.dart';

class Damkar extends StatefulWidget {
  @override
  State<Damkar> createState() => _DamkarState();
}

class _DamkarState extends State<Damkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Layanan Damkar"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                              Text("Call Now",
                                  style: new TextStyle(fontSize: 17.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                ],
              ),
            ],
          )),
    );
  }
}
