import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LokDamkar extends StatefulWidget {
  const LokDamkar({Key? key}) : super(key: key);

  @override
  State<LokDamkar> createState() => _LokDamkarState();
}

class _LokDamkarState extends State<LokDamkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lokasi Damkar"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/lokdamkarr.jpg')),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 350,
              height: 200,
              color: Colors.lightGreen[50],
              child: Column(
                children: [
                  SizedBox(height: 30),
                  const Text(
                    'Alamat : Jl. Bingkil No.1, Ciptomulyo, Kec. Sukun, Kota Malang, Jawa Timur 65148 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Jam : Buka 24 jam',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchURL(
                          'https://www.google.com/maps/place/Pemadam+Kebakaran+Kota+Malang/@-7.9927952,112.6287802,15z/data=!4m5!3m4!1s0x0:0xa3ae404c3e675274!8m2!3d-7.9927241!4d112.6288125'); // here you can also use async-await
                    },
                    child: const Text('Maps Lokasi'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
