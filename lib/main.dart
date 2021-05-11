import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:orquestapp/screens/landingPage.dart';
import 'package:orquestapp/utils/auth.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myApp());
}
class myApp extends StatefulWidget {

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthService>(
        create: (context) => AuthService(),
        child:

        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LandingPage(), // go to stateful widget
        )
    );
  }
}



//
//
//
// }
//
// // stateful widget connect to splashscreen
// class MyHomePage extends StatefulWidget {
//   @override
//   SplashScreenState createState() => SplashScreenState();
// }
//
// class SplashScreenState extends State<MyHomePage> {
//   @override
//
//
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 5),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(
//             builder: (context) => HomePage()
//         ))
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//         color: Colors.deepPurpleAccent, child: Image.asset('assets/logo.png'));
//   }
// }


// class HomePage extends StatelessWidget {
//
//   Future<void> _signInWithGoogle(BuildContext context) async {
//     try {
//       final auth = Provider.of<AuthService>(context, listen: false);
//       await auth.signInWithGoogle();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

/*
  Future<void> _signInWithFacebook(BuildContext context) async {
    try {
      final auth = Provider.of<AuthService>(context, listen: false);
      await auth.signInWithFacebook();
    } catch (e) {
      print(e.toString());
    }
  }
*/

