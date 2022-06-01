import 'package:flutter/material.dart';
import 'package:ta_aplikasi_laima/login.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          Text("Register",
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 14, 56, 16))),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan NIK Anda",
              labelText: "NIK",
              icon: Icon(Icons.person_outline),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Nama Lengkap Anda",
              labelText: "Nama Lengkap",
              icon: Icon(Icons.person),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Tanggal Lahir Anda",
              labelText: "Tanggal Lahir",
              icon: Icon(Icons.calendar_view_month),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Jenis Kelamin Anda Anda",
              labelText: "Jenis Kelamin",
              icon: Icon(Icons.people),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Alamat Anda",
              labelText: "Alamat",
              icon: Icon(Icons.home_outlined),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Email Anda",
              labelText: "Email",
              icon: Icon(Icons.mail),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              hintText: "Masukkan Password Anda",
              labelText: "Password",
              icon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              child: Text("Daftar",
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
