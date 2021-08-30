import 'package:flutter/material.dart';
import 'Kartu_K.dart';
import 'Akte.dart';
import 'Surat.dart';
import 'Informasi.dart';
import 'package:flutter_swiper/flutter_swiper.dart';




class add extends StatefulWidget {
  const add({key}) : super(key: key);

  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  var arr = ["assets/images/slider/D5.jpeg","assets/images/slider/D2.jpeg","assets/images/slider/D3.jpeg","assets/images/slider/D1.jpeg","assets/images/slider/D4.jpeg"];
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
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            width: 200,
            height: 100,
            child: Image.asset("assets/images/logoo.png"),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            width: double.infinity,
            child: Text("Masyarakat Desa", textAlign: TextAlign.left,),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(0.0),
              width: double.infinity,
              height: 150,
              child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new
                ClipRRect(
                  borderRadius: new BorderRadius.circular(20.0),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(arr[index]),
                    width: 100.0,
                    height: 100.0,
                  ),
                );

                // Image.asset("assets/images/flut.jpg",fit: BoxFit.fill,);
              },
              itemCount: 4,
              viewportFraction: 0.8,
              scale: 0.9,
            )
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
                    height: 20,
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
                  ),
                  SizedBox(
                    height: 20,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color.fromRGBO(22, 144, 100, 1),
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
  }}
