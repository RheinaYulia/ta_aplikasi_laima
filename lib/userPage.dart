import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/ambulans.dart';
import 'package:ta_aplikasi_laima/bpbd.dart';
import 'package:ta_aplikasi_laima/damkar.dart';
import 'package:ta_aplikasi_laima/main.dart';
import 'package:ta_aplikasi_laima/pln.dart';
import 'package:ta_aplikasi_laima/police.dart';

class UserPage extends StatelessWidget {
  UserPage({this.username});

  final String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text("Dashboard Laima"),
      ),
    backgroundColor: Colors.green[100],
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.green[700],
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      height: 70.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/man.png')),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Halo $username',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),

                    // const Text("Berita Viral",
                    // style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Dashboard"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.tty),
                title: const Text("Lapor"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log out"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Login(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Damkar(),
                  ),
                );
              },
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.fireplace, size: 70, color: Colors.red),
                    Text("DAMKAR",
                        style: TextStyle(
                          fontSize: 17.0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Menu 2
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ambulans(),
                  ),
                );
              },
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_transportation,
                        size: 70, color: Colors.blue),
                    Text("Ambulance",
                        style: TextStyle(
                          fontSize: 17.0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Menu 3
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Police(),
                  ),
                );
              },
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.military_tech, size: 70, color: Colors.green),
                    Text("Police",
                        style: TextStyle(
                          fontSize: 17.0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Menu 4
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bpbd(),
                  ),
                );
              },
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_people, size: 70, color: Colors.orange),
                    Text("BPBD",
                        style: TextStyle(
                          fontSize: 17.0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Menu 5
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PLN(),
                  ),
                );
              },
              splashColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_objects,
                        size: 70, color: Colors.yellowAccent),
                    Text("PLN",
                        style: TextStyle(
                          fontSize: 17.0,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
