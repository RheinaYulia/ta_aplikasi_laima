import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor:Colors.green[700] ,
          elevation: 7,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(Icons.verified_user, color: Colors.white,)
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/img/man.png'),
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left:24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Stefan', style: TextStyle(fontSize: 28,color: Colors.white,
                      fontWeight:FontWeight.bold)
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.white70, size: 17,),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text('Cikarang, Bekasi',
                            style: TextStyle(color: Colors.white70,fontSize: 14, letterSpacing: 3, wordSpacing: 4)
                            ),
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                  ),
              ],
            ),
            Container(
                        color: Color.fromARGB(255, 190, 233, 192),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '+6288 77325 73714',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 190, 233, 192),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'stefan123@gmail.com',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                              ),
                            ),
                          ],
                        ),
                      ),
          ], 
        ),
      ),
    );
  }
}