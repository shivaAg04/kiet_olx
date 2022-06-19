import 'package:flutter/material.dart';
import 'package:kiet_olx/model/product_blueprint.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductBlueprint> _allitems = [];

  List<ProductBlueprint> get allitems {
    return [..._allitems];
  }
}
