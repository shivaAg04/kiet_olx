import 'package:flutter/material.dart';
import 'package:kiet_olx/screens/bottom_navigation_bar.dart';

import 'package:kiet_olx/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KIET OLX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomiseBottomNavigationBar(),
    );
  }
}
