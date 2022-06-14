import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LokBPBD extends StatefulWidget {
  const LokBPBD({Key? key}) : super(key: key);

  @override
  State<LokBPBD> createState() => _LokBPBDState();
}

class _LokBPBDState extends State<LokBPBD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lokasi BPBD"),
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
                  image: AssetImage('assets/images/lokbpbd1.jpg')),
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
                    'Alamat : Jl. Danau Ranau Raya No.1-A, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65319 ',
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
                          'https://www.google.com/maps/place/BPBD+Kota+Malang/@-7.9782632,112.6568522,18z/data=!3m1!4b1!4m5!3m4!1s0x2dd6285d138d53b3:0x28931aa503590763!8m2!3d-7.9782632!4d112.6579465'); // here you can also use async-await
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
