import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kiet_olx/screens/User/after_login.dart';
import 'package:kiet_olx/screens/ads_screen.dart';
import 'package:kiet_olx/screens/home_screen.dart';
import 'package:kiet_olx/screens/User/user_screen.dart';

class CustomiseBottomNavigationBar extends StatefulWidget {
  const CustomiseBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomiseBottomNavigationBar createState() =>
      _CustomiseBottomNavigationBar();
}

class _CustomiseBottomNavigationBar
    extends State<CustomiseBottomNavigationBar> {
  final List<Widget> _screenWidget = [
    AdsScreen(),
    HomeScreen(),
    AfterLogin(),
  ];
  var index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenWidget[index],
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        items: const <Widget>[
          Icon(
            Icons.add_sharp,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.black,
            size: 20,
          ),
        ],
        animationDuration: const Duration(milliseconds: 300),
        height: 50,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        // animationCurve: Curves.decelerate,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
      ),
    );
  }
}
