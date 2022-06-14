import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LokPolice extends StatefulWidget {
  const LokPolice({Key? key}) : super(key: key);

  @override
  State<LokPolice> createState() => _LokPoliceState();
}

class _LokPoliceState extends State<LokPolice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lokasi Police"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[200],
      body: SingleChildScrollView(
        child: Column(
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
                    image: AssetImage('assets/images/lokpolice1.jpg')),
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
                      'Alamat : Jl. Kelud No.11, Bareng, Kec. Klojen, Kota Malang, Jawa Timur 65119',
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
                            'https://www.google.com/maps/place/Polsekta+Klojen/@-7.9809067,112.6253426,15z/data=!4m2!3m1!1s0x0:0x169cc564714f2acd?sa=X&ved=2ahUKEwiroO3Tvar4AhWv9jgGHd4nD4kQ_BJ6BAg2EAU'); // here you can also use async-await
                      },
                      child: const Text('Maps Lokasi'),
                    ),
                  ],
                ),
              ),
            ),
//======================================== Police 2 =====================================================
            SizedBox(
              height: 30,
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lokpolice2.jpg')),
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
                      'Alamat : Jl. Raden Intan No.5, Arjosari, Kec. Blimbing, Kota Malang, Jawa Timur 65126',
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
                            'https://www.google.com/maps/place/Polsekta+Blimbing/@-7.9298414,112.6418323,15z/data=!4m12!1m6!3m5!1s0x0:0x16f9d50460b8de76!2sPolsekta+Blimbing!8m2!3d-7.9298414!4d112.650587!3m4!1s0x0:0x16f9d50460b8de76!8m2!3d-7.9298414!4d112.650587'); // here you can also use async-await
                      },
                      child: const Text('Maps Lokasi'),
                    ),
                  ],
                ),
              ),
            ),
//======================================== Police 3 =====================================================
            SizedBox(
              height: 30,
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lokpolice3.jpg')),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 350,
                height: 220,
                color: Colors.lightGreen[50],
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    const Text(
                      'Alamat : Jl. Raya Ki Ageng Gribig No.96, Kedungkandang, Kec. Kedungkandang, Kota Malang, Jawa Timur 65136',
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
                            'https://www.google.com/maps/place/Polsek+Kedungkandang/@-7.9934269,112.6481924,3a,80.1y,90t/data=!3m8!1e2!3m6!1sAF1QipOaTbrn11uHACb1aj3shWooOLhdr3Db1jd8LRSw!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOaTbrn11uHACb1aj3shWooOLhdr3Db1jd8LRSw%3Dw211-h100-k-no!7i1040!8i492!4m5!3m4!1s0x0:0xa88ff0854c8d4656!8m2!3d-7.993134!4d112.648321'); // here you can also use async-await
                      },
                      child: const Text('Maps Lokasi'),
                    ),
                  ],
                ),
              ),
            ),
//======================================== Police 4 =====================================================
            SizedBox(
              height: 30,
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lokpolice4.jpg')),
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
                      'Alamat : Gang 13 Jl. MT. Haryono No.413, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144',
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
                            'https://www.google.com/maps/place/Kantor+Polsek+Lowokwaru/@-7.9413967,112.609361,15z/data=!4m5!3m4!1s0x0:0x29eb71684114a9b5!8m2!3d-7.9413967!4d112.6093609'); // here you can also use async-await
                      },
                      child: const Text('Maps Lokasi'),
                    ),
                  ],
                ),
              ),
            ),
//======================================== Police 5 =====================================================
            SizedBox(
              height: 30,
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lokpolice5.jpg')),
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
                      'Alamat : Jalan Kolonel Sugiono Gang 8 No.82, Ciptomulyo, Kec. Sukun, Kota Malang, Jawa Timur 65148',
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
                            'https://www.google.com/maps/place/Polsekta+Sukun/@-8.004031,112.618574,15z/data=!4m2!3m1!1s0x0:0x21b4faaee71f3bd?sa=X&ved=2ahUKEwjCz9iKxKr4AhUgR2wGHQY5BbEQ_BJ6BAhWEAU'); // here you can also use async-await
                      },
                      child: const Text('Maps Lokasi'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
