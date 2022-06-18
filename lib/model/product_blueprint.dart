import 'package:flutter/material.dart';

class ProductBlueprint {
  String? id;
  String? title;
  String? category;
  int? price;
  String? description;
  bool? isrentable = false;
  ProductBlueprint(
      {required this.description,
      this.id,
      required this.isrentable,
      required this.price,
      required this.title,
      required this.category});
}
