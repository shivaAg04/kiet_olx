import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:html';

class CategoriesButton extends StatelessWidget {
  Color? chooseColor;
  Icon? chooseIcon;
  String? chooseText;
  CategoriesButton(
      {Key? key,
      required this.chooseColor,
      required this.chooseIcon,
      required this.chooseText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 40,
          color: chooseColor,
        ),
        CircleAvatar(
          child: chooseIcon,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(chooseText!),
        )
      ],
    );
  }
}
