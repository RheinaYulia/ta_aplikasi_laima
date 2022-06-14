import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/utillinktelfon.dart';

class Link extends StatelessWidget {
  final String title = 'Hubungi Damkar';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.green),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                text: 'Open Call',
                onClicked: () =>
                    Utillinktelfon.openPhoneCall(phoneNumber: '+4912388128311'),
              ),
              buildButton(
                text: 'Open SMS',
                onClicked: () =>
                    Utillinktelfon.openSMS(phoneNumber: '+4912388128311'),
              ),
              buildButton(
                text: 'Open Email',
                onClicked: () => Utillinktelfon.openEmail(
                  toEmail: 'example@gmail.com',
                  subject: 'Hello World',
                  body: 'This works great!',
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: RaisedButton(
          shape: StadiumBorder(),
          onPressed: onClicked,
          color: Colors.red,
          textColor: Colors.white,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
}
