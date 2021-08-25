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
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            new NetworkImage("lib/assets/images/back.jpeg"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 70, right: 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => add()),
                        );
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
