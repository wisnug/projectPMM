import 'package:flutter/material.dart';
import 'package:aplik/KK_Baru.dart';
import 'package:aplik/Tambah.dart';
import 'package:aplik/Hapus.dart';

class kartu_k extends StatefulWidget {
  kartu_k({Key? key}) : super(key: key);

  @override
  _kartu_kState createState() => _kartu_kState();
}

class _kartu_kState extends State<kartu_k> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          RaisedButton(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Colors.brown,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => kk_baru()),
              );
            },
            child: Text(
              "Buat Kartu Keluarga Baru",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Colors.brown,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => tambah()),
              );
            },
            child: Text(
              "Tambah Anggota Keluarga",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Colors.brown,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => hapus()),
              );
            },
            child: Text(
              "Hapus Anggota Keluarga",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ])));
  }
}
