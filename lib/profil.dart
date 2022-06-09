import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/userPage.dart';

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
            //NIK
            Container(
                        color: Color.fromARGB(255, 190, 233, 192),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '1234',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                              ),
                            ),
                          ],
                        ),
                      ),
                      //email
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
                      // tanggal lahir
                      Container(
                        color: Color.fromARGB(255, 190, 233, 192),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_view_month,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '08-juni-2022',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                              ),
                            ),
                          ],
                        ),
                      ),
            SizedBox(height: 10),
              ElevatedButton(
                  child: Text("Kembali",
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    primary: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
                  }),
          ], 
        ),
      ),
    );
  }
}