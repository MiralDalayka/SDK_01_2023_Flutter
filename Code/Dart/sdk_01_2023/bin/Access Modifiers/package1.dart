// --private -- public

class Student {
  Student() {
    print("I'm Student Class");
  }

  int _id;
  String name;

  //function

  void _printFunction() {
    print("Print function");
  }
}

void main() {
  Student s = Student();
  s.name;
  s._id;
  s._printFunction();
}
