var staticId = 1;

class Product {
  int _id;
  double _price;
  String _name;

  Product({String n, double p}) {
    _name = n;
    _price = p;
    _id = staticId++; // _id = id;
  }

  set name(String value) {
    _name = value;
  }


  set price(double value) {
    _price = value;
  }

  String get name => _name;

  double get price => _price;

  int get id => _id;
}
