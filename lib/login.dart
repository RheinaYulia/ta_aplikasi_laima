import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login",
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 14, 56, 16))),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan Nama",
              labelText: "Nama",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(32.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.blueGrey.shade900, width: 1),
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan Password",
              labelText: "Password",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(32.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.blueGrey.shade900, width: 1),
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
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
              onPressed: () {}),
        ],
      ),
    ));
  }
}
