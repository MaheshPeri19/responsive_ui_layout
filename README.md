# responsive_ui_layout

A new Flutter package for Responsive UI with Null Safety.

## Overview

The package consists of the followings:

ResponsiveConfig - is the class that makes calculation for responsiveness.
Responsive Extensions - are functions to calculation dynamic height, width, font size and image size.

## Getting Started

First of all, you should initialize ResponsiveConfig class using it's init method and giving the your design sizes (Width and Height are given by your designer as base screen size):

## Example

```
import 'package:example/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_layout/responsive_ui_layout.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            ResponsiveConfig(designScreenWidth: 375, designScreenHeight: 812)
                .init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Responsive UI Example',
              // theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}

```

use extension methods to calculate height, width and font size dynamically :

```
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
```

## Dart Versions

Dart 2.13.4

## Flutter Versions

Flutter 2.2.3

## Maintainers

https://github.com/MaheshPeri19/
