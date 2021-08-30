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
        body: Container(
            child: Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 80),
            alignment: Alignment.topLeft,
            width: 200,
            height: 200,
            child: Image.asset("assets/images/logoo.png"),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(239, 239, 239, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0)),
              ),
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color.fromRGBO(22, 144, 100, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => kk_baru()),
                        );
                      },
                      child: Text(
                        "Buat Kartu Keluarga Baru",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color.fromRGBO(22, 144, 100, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => tambah()),
                        );
                      },
                      child: Text(
                        "Tambah Anggota Keluarga",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color.fromRGBO(22, 144, 100, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => hapus()),
                        );
                      },
                      child: Text(
                        "Hapus Anggota Keluarga",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/jtsr2.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
