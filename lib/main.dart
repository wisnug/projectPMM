import 'package:flutter/material.dart';
import 'package:aplik/add.dart';

void main() {
  runApp(new MaterialApp(
    title: "Apps Desa",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "lib/assets/images/flut.jpg")))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "lib/assets/images/flut.jpg")))),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text("Nama Aplikasi", style: TextStyle(color: Colors.cyan, fontSize: 35, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 70,
                ),
                RaisedButton(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: Colors.brown,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => add()),
                    );
                  },
                  child: Text(
                    "Buat kk",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )),
          )),
    );
  }
}
