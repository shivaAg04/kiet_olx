import 'package:flutter/material.dart';

import 'package:kiet_olx/widgets/categories_button.dart';

import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBar(),
          const Align(
            alignment: Alignment.topLeft,
            child: Text("   Browseq Category"),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                CategoriesButton(
                    chooseColor: Color(0xFFFF9000),
                    chooseIcon: Icon(Icons.add),
                    chooseText: "first")
              ],
            ),
          )
        ],
      ),
    );
  }
}
