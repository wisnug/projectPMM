import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class hapus extends StatefulWidget {
  hapus({Key? key}) : super(key: key);

  @override
  _hapusState createState() => _hapusState();
}

class _hapusState extends State<hapus> {

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
                 Text("Hapus Anggota")
               )
             ),
             SizedBox(height: 30),
             Padding(padding: EdgeInsets.only(left:50, right: 50),
              child: Container(
               padding: EdgeInsets.all(40),
               color: Colors.grey,
               child: (
                 Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
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