abstract class Shape {
  String _name, _id;

  Shape(String n, String id) {
    print("Named constructor");

    _name = n;
    _id = id;
  }

  // Shape() {
  //   print("Default constructor");
  // }

  String get id => _id;

  String get name => _name;

  void printInfo() {
    print("I'm a function in Shape Class");
    print("My name is $_name");
  }

  double areaFunction();
}

class Circle extends Shape {
  double _r;

  Circle(double r, String n, String id) : super(n, id) {
    _r = r;
  }

  @override
  double areaFunction() {
    return _r*_r*3.14;
  }
}

class Square extends Shape {
  double _sideLength;

  Square(this._sideLength, String n, String id) : super(n, id);

  @override
  double areaFunction() {
    return _sideLength*_sideLength;
  }



}


