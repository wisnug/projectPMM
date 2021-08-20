import 'package:flutter/material.dart';
import 'package:aplik/KK_Baru.dart';

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
          color: Colors.brown,
          onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => kk_baru()),
                    );
                  },
          child: Text(
            "Buat kk",
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
          onPressed: () {},
          child: Text(
            "Buat ktp",
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
          onPressed: () {},
          child: Text(
            "Buat surat-surat",
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
          onPressed: () {},
          child: Text(
            "Informasi Desa",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    )));
  }
}
