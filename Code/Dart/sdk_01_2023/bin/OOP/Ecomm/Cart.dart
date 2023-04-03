import 'Product.dart';

var id = 0;

class Cart {
  int _id, _numOfProducts;
  List<Product> productList = [];
  double _total;

  Cart() {
    _id = id++;
    _numOfProducts = 0;
    _total = 0;
  }

  double get total => _total;

  get numOfProducts => _numOfProducts;

  set numOfProducts(value) {
    _numOfProducts = value;
  }
}
