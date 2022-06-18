import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kiet_olx/screens/User/after_login.dart';
import 'package:kiet_olx/screens/ads_screen.dart';
import 'package:kiet_olx/screens/User/sign_up.dart';
import 'package:lottie/lottie.dart';

import '../bottom_navigation_bar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _email, _password;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        print(user);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const CustomiseBottomNavigationBar()),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }

  login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
      } catch (e) {
        showError(e.toString());
        print(e);
      }
    }
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  navigateToSignUp() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: Lottie.network(
                "https://assets7.lottiefiles.com/packages/lf20_mjlh3hcy.json"),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) return 'Enter Email';
                    },
                    decoration: const InputDecoration(
                        labelText: 'Email', prefixIcon: Icon(Icons.email)),
                    onSaved: (input) => _email = input!),
                TextFormField(
                    validator: (input) {
                      if (input!.length < 6) {
                        return 'Provide Minimum 6 Character';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    onSaved: (input) => _password = input!),
                const SizedBox(height: 20),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                  onPressed: login,
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Text('LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: navigateToSignUp,
            child: const Text('Create an Account?'),
          )
        ],
      ),
    ));
  }
}
