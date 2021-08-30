import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class surat extends StatefulWidget {
  surat({Key? key}) : super(key: key);

  @override
  _suratState createState() => _suratState();
}

class _suratState extends State<surat> {
  static const _url = 'http://api.whatsapp.com/send?phone=6287859911707';
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: 40,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(99, 99, 99, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.0),
                                    topLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0)),
                              ),
                              padding: EdgeInsets.all(15),
                              child: (Text("BUAT SURAT", style: TextStyle(color: Colors.white),))),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "PERSYARATAN",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Pembuatan surat-surat yang berkaitan dengan desa bisa menghubungi admin desa melalui tombol whatsapp dibawah ini "),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              padding: EdgeInsets.only(
                                  top: 20, bottom: 20, left: 70, right: 70),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: Color.fromRGBO(22, 144, 100, 1),
                              onPressed: _launchURL,
                              child: Text(
                                "Whatsapp Desa",
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
