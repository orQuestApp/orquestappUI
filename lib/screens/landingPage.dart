import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orquestapp/screens/Explore.dart';
import 'package:orquestapp/utils/auth.dart';
import 'package:provider/provider.dart';
import '../HomePage.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthService>(context, listen: false);
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          // ignore: unnecessary_null_comparison
          if (user == null) {
            return HomePage();
          }
          return Explore();
        }
        return CircularProgressIndicator();   //HomePage(); //ircularProgressIndicator()= loading screen
      },
    );
  }
}