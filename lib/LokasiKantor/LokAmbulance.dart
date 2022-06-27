import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LokAmbulance extends StatefulWidget {
  const LokAmbulance({ Key? key }) : super(key: key);

  @override
  State<LokAmbulance> createState() => _LokAmbulanceState();
}

class _LokAmbulanceState extends State<LokAmbulance> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lokasi Ambulance"),
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
                  image: AssetImage('assets/images/lokambulance.jpg')),
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
                    'Alamat : Jl. Buring No.10, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119 ',
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
                          'https://www.google.com/maps/place/Jl.+Buring+No.10,+Oro-oro+Dowo,+Kec.+Klojen,+Kota+Malang,+Jawa+Timur+65119/@-7.9722657,112.6253117,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd628258cf3a3b3:0x2ef5661308f38462!8m2!3d-7.972271!4d112.6275004'); // here you can also use async-await
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
