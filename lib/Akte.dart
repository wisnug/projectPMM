import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class akte extends StatefulWidget {
  akte({Key? key}) : super(key: key);

  @override
  _akteState createState() => _akteState();
}

class _akteState extends State<akte> {
 static const _url = 'http://api.whatsapp.com/send?phone=6285210967308';
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
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            width: 200,
            height: 200,
            child: Image.asset("assets/images/logoo.png"),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0)),
              ),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0)),
              ),
               padding: EdgeInsets.all(15),
               
               child: (
                 Text("PEMBUATAN AKTE KELAHIRAN")
               )
             ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        
                        child: Text(
                      "PERSARATAN", style: TextStyle(decoration: TextDecoration.underline, fontSize: 25, fontWeight:FontWeight.bold), textAlign: TextAlign.center,),
                      ),
                      SizedBox(
                        height: 30,
                      ),  
                    Text(
                      "1. Foto/scan surat keterangan kelahiran dari dokter atau bidan atau kelahiran (asli)"),
                  Text(
                      "2. Foto/scan surat keterangan kelahiran (asli, Form F-201) dengan mencantumkan nama dan identitas 2 (dua) orang saksi disertai scan atau foto KTP-el"),
                  Text(
                      "3. Foto/scan akta nikah atau akta perkawinan orang tua (dilegalisir)"),
                  Text(
                      "4. Foto/scan kartu keluarga (KK) dan kartu tanda penduduk (KTP-el) orang tua"),
                  Text("5. Foto/scan surat pernyataan data benar"),
                  ],),
                  
                  
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Colors.green,
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
                    width: 50,
                    height: 50,
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
