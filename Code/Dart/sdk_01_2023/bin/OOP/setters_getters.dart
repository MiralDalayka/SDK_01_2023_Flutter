//global key to use it for Users Id
int c = 0;

class Human {
  //private attributes
  //dataType _attName;
  String _name;
  int _age;
  int _id;

  Human() {
    print("Default constructor");
    _id = c++;
  }

  //setters
  //we use setters to set a value to an attribute
  //method 1 to write setter
  set name(String n) {
    _name = n;
  }

  //method 2 to write setter

  set age(int a) => _age = a;

//getters
  //we use setters to retrieve a value of an attribute

  //method 1 to write getters

  String get nameGetter => _name;

  //method 2 to write getters

  int get ageGetter {
    return _age;
  }

  int get idGetter {
    return _id;
  }

//not all attributes should have setter and getter at the same time.

}

void main() {
  //object 1:
  Human h1 = Human();
  //object.setterName= value;
  h1.name = "ALi";
  h1.age = 20;

  //object.getterName -->  will return value;
  print("h1.nameGetter = ${h1.nameGetter}");
  print("h1.ageGetter = ${h1.ageGetter}");
  print("h1.idGetter = ${h1.idGetter}");

  print("*****************");
  //object 2:

  Human h2 = Human();
  h2.name = "Sara";
  h2.age = 32;
  print("h2.nameGetter = ${h2.nameGetter}");
  print("h2.ageGetter = ${h2.ageGetter}");
  print("h2.idGetter = ${h2.idGetter}");
}