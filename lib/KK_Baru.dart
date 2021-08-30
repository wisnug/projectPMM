import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class kk_baru extends StatefulWidget {
  kk_baru({Key? key}) : super(key: key);

  @override
  _kk_baruState createState() => _kk_baruState();
}

class _kk_baruState extends State<kk_baru> {

static const _url = 'http://api.whatsapp.com/send?phone=6285210967308';  
  void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Container(
               padding: EdgeInsets.all(15),
               color: Colors.deepPurpleAccent,
               child: (
                 Text("Buat Kartu Keluarga Baru")
               )
             ),
             SizedBox(height: 30),
             Padding(padding: EdgeInsets.only(left:50, right: 50),
              child: Container(
               padding: EdgeInsets.all(40),
               color: Colors.grey,
               child: Column(
        children: const <Widget>[
            Text("1. Foto/scan formilir isian kartu keluarga (F1-01) distempel atau RT,RW dan kades atau lurah"),
            Text("2. Foto/scan surat nikah atau akta nikah atau kutipan akta perkawinan"),
            Text("3. Foto/scan akta kelahiran atau surat kelahiran bagi keluarga yang mempunyai anak"),

        ],
    )
             )
             ),
             SizedBox(
               height: 40
             ),
             RaisedButton(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.brown,
          onPressed: _launchURL,
          child: Text(
            "Submit",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        )
           ],
         )
       )
    );
  }
}