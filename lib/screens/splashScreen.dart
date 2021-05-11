import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

// stateful widget connect to splashscreen
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (context) => HomePage()
        ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurpleAccent, child: Image.asset('assets/logo.png'));
  }
}