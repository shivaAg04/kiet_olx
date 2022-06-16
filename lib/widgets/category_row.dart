import 'package:flutter/material.dart';

import 'categories_button.dart';

class CategooryRow extends StatelessWidget {
  const CategooryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoriesButton(
              chooseColor: const Color.fromARGB(255, 30, 255, 0),
              chooseIcon: const Icon(
                Icons.sports_esports_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              chooseText: "SPORTS"),
          CategoriesButton(
              chooseColor: const Color.fromARGB(255, 255, 36, 240),
              chooseIcon: const Icon(
                Icons.book,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              chooseText: "STATIONARY"),
          CategoriesButton(
              chooseColor: const Color.fromARGB(255, 0, 242, 255),
              chooseIcon: const Icon(
                Icons.electrical_services_rounded,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              chooseText: "ELECTRICAL"),
          CategoriesButton(
              chooseColor: const Color.fromARGB(255, 212, 255, 57),
              chooseIcon: const Icon(
                Icons.devices_other_sharp,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              chooseText: "OTHERS"),
        ],
      ),
    );
  }
}
