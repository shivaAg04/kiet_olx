import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:kiet_olx/screens/User/after_login.dart';
import 'package:kiet_olx/screens/User/sign_in.dart';
import 'package:kiet_olx/screens/User/sign_up.dart';
import 'package:lottie/lottie.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AfterLogin()),
        );
      }
    });
  }

  navigateToLogin() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  navigateToRegister() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 35.0),
            Container(
              height: 400,
              child: Lottie.network(
                  "https://assets5.lottiefiles.com/private_files/lf30_1TcivY.json"),
            ),
//   child: const Image(
            //     image: NetworkImage(
            //         "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            //     fit: BoxFit.contain,
            //   ),
            // ),
            SizedBox(height: 20),
            RichText(
                text: const TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'OLX kiet',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange))
                ])),
            const SizedBox(height: 10.0),
            const Text(
              'Sell your unused Product here',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: navigateToLogin,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.orange,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(width: 20.0),
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: navigateToRegister,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.orange,
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
