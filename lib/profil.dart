import 'dart:convert';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:ta_aplikasi_laima/userPage.dart';
import 'package:http/http.dart' as http;

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  TextEditingController nik = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController tl = TextEditingController();
  TextEditingController jk = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController keldes = TextEditingController();
  TextEditingController kec = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  String _level = "member";

  // Validasi input
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldMessengerState> scaffoldMassengerKey =
      GlobalKey<ScaffoldMessengerState>();

  // format tanggal
  final format = DateFormat("yyyy-MM-dd");

  Future _daftar() async {
    final response = await http.post(
        Uri.parse("http://192.168.43.71/ta_aplikasi_laima/create.php"),
        body: {
          "nik": nik.text,
          "nama": nama.text,
          "username": username.text,
          "tanggal_lahir": tl.text,
          "jenis_kelamin": jk.text,
          "alamat": alamat.text,
          "keldes": keldes.text,
          "kecamatan": kec.text,
          "email": email.text,
          "password": pass.text,
          "level": _level,
        });
    var datauser = json.decode(response.body);
    if (datauser == "Error") {
      Fluttertoast.showToast(
          msg: "User allready exit!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registration Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.pushReplacementNamed(context, '/MemberPage');
    }

    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('proses sukses')));
    }
  }

  void tampil() {
    Fluttertoast.showToast(
        msg: "Registrasi Gagal",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor: Colors.green[700],
          elevation: 7,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/man.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Stefan',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.white70,
                                size: 17,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text('Cikarang, Bekasi',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                        letterSpacing: 3,
                                        wordSpacing: 4)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 70,
                child: TextFormField(
                    controller: nik,
                    maxLength: 16,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Masukkan NIK Anda",
                      labelText: "NIK",
                      icon: Icon(Icons.person_outline),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'NIK tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: nama,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Nama Lengkap Anda",
                      labelText: "Nama Lengkap",
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: username,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Username ",
                      labelText: "Username",
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: DateTimeField(
                    controller: tl,
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                    decoration: new InputDecoration(
                      hintText: "Masukkan Tanggal Lahir Anda",
                      labelText: "Tanggal Lahir",
                      icon: Icon(Icons.calendar_view_month),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'Tanggal tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: jk,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Jenis Kelamin Anda",
                      labelText: "Jenis Kelamin",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Jenis Kelamin tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: alamat,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Alamat Anda",
                      labelText: "Alamat",
                      icon: Icon(Icons.home_outlined),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Alamat tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              // Row(
              //   children: [
              //     Container(
              //       height: 30,
              //       width: 60,
              //       margin: EdgeInsets.only(left: 40),
              //       child: TextFormField(
              //           keyboardType: TextInputType.number,
              //           decoration: new InputDecoration(
              //             labelText: "RT",
              //             border: OutlineInputBorder(
              //                 borderRadius: new BorderRadius.circular(5.0)),
              //           ),
              //           validator: (value) {
              //             if (value!.isEmpty) {}
              //           }),
              //     ),
              //     Container(
              //       margin: EdgeInsets.only(left: 20),
              //       child: Text("/"),
              //     ),
              //     Container(
              //       height: 30,
              //       width: 60,
              //       margin: EdgeInsets.only(left: 20),
              //       child: TextFormField(
              //           keyboardType: TextInputType.number,
              //           decoration: new InputDecoration(
              //             labelText: "RW",
              //             border: OutlineInputBorder(
              //                 borderRadius: new BorderRadius.circular(5.0)),
              //           ),
              //           validator: (value) {
              //             if (value!.isEmpty) {}
              //           }),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 160,
                    margin: EdgeInsets.only(left: 40),
                    child: TextFormField(
                        controller: keldes,
                        decoration: new InputDecoration(
                          hintText: "Masukkan Kel/Desa Anda",
                          labelText: "Kelurahan/Desa",
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Kel/Des tidak boleh kosong!';
                          }
                        }),
                  ),
                  Container(
                    height: 50,
                    width: 160,
                    margin: EdgeInsets.only(left: 10),
                    child: TextFormField(
                        controller: kec,
                        decoration: new InputDecoration(
                          hintText: "Masukkan Kecamatan Anda",
                          labelText: "Kecamatan",
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Kecamatam tidak boleh kosong!';
                          }
                        }),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Email Anda",
                      labelText: "Email",
                      icon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Password Anda",
                      labelText: "Password",
                      icon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong!';
                      }
                    }),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      child: Text("Update",
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        primary: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                      onPressed: () {
                        _daftar();
                      }),
                  ElevatedButton(
                      child: Text("Kembali",
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        primary: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                      onPressed: () {
                        _daftar();
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
