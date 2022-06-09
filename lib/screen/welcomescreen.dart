import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpertamadicoding/screen/mainscreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Image.asset(
                "images/img_welcome.jpeg",
                fit: BoxFit.fitWidth,
                width: 220.0,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Flexible(
                child: Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Text("WELCOME",
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.lightBlueAccent,
                          height: 2.0)),
                  Text(
                      "Aplikasi ini adalah aplikasi pertama yang saya buat untuk menyelesaikan kelas "
                      "'BELAJAR MEMBUAT APLIKASI FLUTTER UNTUK PEMULA' pada platform dicoding",
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 1.2,
                          fontSize: 16.0,
                          height: 1.3),
                      textAlign: TextAlign.center)
                ],
              ),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainScreen();
          }));
        },
      ),
    );
  }
}
