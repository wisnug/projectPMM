import 'package:flutter/material.dart';
import 'package:aplik/Kartu_K.dart';
import 'package:aplik/Akte.dart';
import 'package:aplik/Surat.dart';
import 'package:aplik/Informasi.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
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
          color: Colors.green,
          onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => kartu_k()),
                    );
                  },
          child: Text(
            "BUAT KARTU KELUARGA",
            style: TextStyle(
              color: Colors.white,
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
          color: Colors.green,
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => akte()),
            );
          },
          child: Text(
            "BUAT AKTE KELAHIRAN",
            style: TextStyle(
              color: Colors.white,
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
          color: Colors.green,
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => surat()),
            );
          },
          child: Text(
            "BUAT SURAT-SURAT",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        
      ],
    )));
  }
}
