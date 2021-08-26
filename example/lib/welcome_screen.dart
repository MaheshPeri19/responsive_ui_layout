import 'package:flutter/material.dart';
import 'package:responsive_ui_layout/responsive_ui_layout.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Responsive UI",
          style: TextStyle(fontSize: 20.fontSize, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Container(
                child: Text(
                  "Welcome To Flutter Responsive UI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.fontSize, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 100.width,
              height: 100.height,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
