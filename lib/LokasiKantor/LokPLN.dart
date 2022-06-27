import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LokPLN extends StatefulWidget {
  const LokPLN({Key? key}) : super(key: key);

  @override
  State<LokPLN> createState() => _LokPLNState();
}

class _LokPLNState extends State<LokPLN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lokasi PLN"),
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
                  image: AssetImage('assets/images/PLNMalang.jpg')),
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
                    'Alamat: 3J27+RH7, Jl. MT. Haryono, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145 ',
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
                          'https://www.google.com/search?q=pln%20kota%20malang&source=lmns&bih=617&biw=1366&hl=id&sa=X&ved=2ahUKEwjt8sHk9cz4AhXF8XMBHfElBCoQvS56BAgEEAE&tbs=lf:1,lf_ui:4&tbm=lcl&sxsrf=ALiCzsZi61JSQO4QNz091vxSu2tF5CZPWQ:1656308446041&rflfq=1&num=10&rldimm=18350117053791858347&lqi=Cg9wbG4ga290YSBtYWxhbmciA4gBAUjE-KTDmaqAgAhaHxAAGAAYARgCIg9wbG4ga290YSBtYWxhbmcqBAgCEACSARhlbGVjdHJpY191dGlsaXR5X2NvbXBhbnmqAQsQASoHIgNwbG4oJg&rlst=f#rlfi=hd:;si:18350117053791858347,l,Cg9wbG4ga290YSBtYWxhbmciA4gBAUjE-KTDmaqAgAhaHxAAGAAYARgCIg9wbG4ga290YSBtYWxhbmcqBAgCEACSARhlbGVjdHJpY191dGlsaXR5X2NvbXBhbnmqAQsQASoHIgNwbG4oJg;mv:[[-7.9435115000000005,112.6373952],[-8.0265066,112.61257979999999]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3,lf:1');
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
