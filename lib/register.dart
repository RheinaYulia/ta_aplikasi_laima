import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:ta_aplikasi_laima/main.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Validasi input
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldMessengerState> scaffoldMassengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final format = DateFormat("yyyy-MM-dd");

  Future<List?> _daftar() async {
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
            Text("Register",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 14, 56, 16),
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              height: 40,
              child: TextFormField(
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
              height: 40,
              child: TextFormField(
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
              height: 40,
              child: DateTimeField(
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
              height: 40,
              child: TextFormField(
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
              height: 40,
              child: TextFormField(
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
            Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  margin: EdgeInsets.only(left: 40),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "RT",
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'RT kosong!';
                        }
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("/"),
                ),
                Container(
                  height: 40,
                  width: 60,
                  margin: EdgeInsets.only(left: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "RW",
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'RW kosong!';
                        }
                      }),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 40),
              child: TextFormField(
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
            SizedBox(height: 10),
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 40),
              child: TextFormField(
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
            SizedBox(height: 10),
            Container(
              height: 40,
              child: TextFormField(
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
              height: 40,
              child: TextFormField(
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
            ElevatedButton(
                child: Text("Daftar",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(right: 30, left: 30),
                  primary: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                ),
                onPressed: () {
                  _daftar();
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Sudah memiliki akun?",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text("Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
