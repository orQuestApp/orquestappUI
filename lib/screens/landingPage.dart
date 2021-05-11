import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:orquestapp/main.dart';
import 'package:orquestapp/models/login.dart';
import 'package:orquestapp/models/signUp.dart';
import 'package:orquestapp/utils/auth.dart';
import 'package:provider/provider.dart';

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
          if (user == null) {
            return SignupPage();
          }
          return LoginPage();
        }
        return HomePage();
      },
    );
  }
}