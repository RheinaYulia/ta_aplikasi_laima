import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ta_aplikasi_laima/adminPage.dart';
import 'package:ta_aplikasi_laima/login.dart';
import 'package:ta_aplikasi_laima/userPage.dart';

void main() {
  runApp(MyApp());
}

String username = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Dengan MySql',
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/AdminPage': (BuildContext context) => AdminPage(
              username: username,
            ),
        '/MemberPage': (BuildContext context) => UserPage(
              username: username,
            ),
        '/MyHomePage': (BuildContext context) => Login(),
      },
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Validasi input
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldMessengerState> scaffoldMassengerKey =
      GlobalKey<ScaffoldMessengerState>();

  //
  bool _isHidePassword = true;

  void _togglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  // controller input text
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  // prosess button submit
  Future<List?> _login() async {
    final response = await http.post(
        Uri.parse("http://192.168.43.71/ta_aplikasi_laima/login.php"),
        body: {
          "username": user.text,
          "password": pass.text,
        });
    var datauser = json.decode(response.body);
    if (datauser.length == 0) {
      setState(() {
        tampil();
      });
    } else {
      if (datauser[0]['level'] == 'admin') {
        Navigator.pushReplacementNamed(context, '/AdminPage');
      } else if (datauser[0]['level'] == 'member') {
        Navigator.pushReplacementNamed(context, '/MemberPage');
      }

      setState(() {
        username = datauser[0]['username'];
      });
    }
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('proses sukses')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 14, 56, 16))),
            SizedBox(height: 20),
            TextFormField(
                controller: user,
                decoration: InputDecoration(
                  hintText: "Masukkan Nama",
                  labelText: "Nama",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey.shade900, width: 1),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan email yang valid!';
                  }
                }),
            SizedBox(height: 20),
            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukkan Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.blueGrey.shade900, width: 1),
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan password yang valid!';
                  }
                }),
            SizedBox(height: 20),
            ElevatedButton(
                child: Text("Masuk",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(right: 30, left: 30),
                  primary: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                ),
                onPressed: () {
                  _login();
                }),
          ],
        ),
      ),
    ));
  }

  void tampil() {
    Fluttertoast.showToast(
        msg: "LOGIN GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
