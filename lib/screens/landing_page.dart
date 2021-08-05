import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orquestapp/auth/login/login.dart';
import 'package:orquestapp/auth/register/register.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  'assets/V1.gif',
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'OrquestApp',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Ubuntu-Regular',
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                      builder: (_) => Login(),
                    ),
                  );
                },
                child: Container(
                  height: 45.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Theme.of(context).accentColor,
                        Color(0xff597FDB),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(builder: (_) => Register()));
                },
                child: Container(
                  height: 45.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Theme.of(context).accentColor,
                        Color(0xff597FDB),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
