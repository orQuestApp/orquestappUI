import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orquestapp/screens/landingPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

// stateful widget connect to splashscreen
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (context) => LandingPage()
        ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurpleAccent, child: Image.asset('assets/logo.png'));
  }
}