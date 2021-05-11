import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orquestapp/utils/auth.dart';
import 'package:provider/provider.dart';

class Explore extends StatefulWidget{
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthService>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
    Navigator.popUntil(context, ModalRoute.withName("/"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Explore'), centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Column(     // TODO: explore page
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Explore Page',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                  ),
                ],
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  _signOut(context);
                },
                color: Color(0xff0095FF),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Sign out", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}