import 'package:flutter/material.dart';

import '../item.dart';



class Cart with ChangeNotifier {
  List selectedProducts = [];

  int price=0;

  add(Item Product) {
    selectedProducts.add(Product);
    price +=Product.price.round();
    notifyListeners();
  }
  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();

    notifyListeners();
  }

}