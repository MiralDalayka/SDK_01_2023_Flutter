//********************************************  Creating class and objects ******************************************** //
// to create class using dart we write
/*
class ClassName{
you can define attributes and functions inside class:
attributes => what characteristic  ( name - age  -gender )
function = > what action (walk - talk - eat )
}
*/
class Human {
  //attributes:
  String name;
  int age;

  //constructors:
  /*
  we need to know few thing about constructors:
  1. the first thing we execute it in the class -> when we create object in main
  2. has many types
  3. named as class name
  4. dose not have return data type
   */
  //1. default constructor:
  Human(String n, int a) {
    print("I'm constructor in human class");

    name = n;
    age = a;
  }

//methods or functions:
  void printFunc() {
    print("I'm a function in human class");
  }
}

void main() {
  //how to create object from class?

  // className objectName = ClassName();
  //why we create objects?
  // if we want to access the class components we must create object
  Human h = Human('Sara', 20);
  print(h.name);
  print(h.age);
  h.printFunc();
  print(
      "*******************************************************************************************************************");
  Human h2 = Human('Ali', 25);
  print(h2.name);
  print(h2.age);
  h2.printFunc();
}