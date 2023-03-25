class Human {
  String _name;
  int _age;

  Human(String n, int a) {
    _name = n;
    _age = a;
  }

  void printFunc() {
    print("Name is $_name ");
    print("Age is $_age ");
  }
}

//Is A
// EMP is A HUMAN
class Emp extends Human {
  String _comId;

  Emp(String c,String n,int a) :super(n,a) {
    _comId = c;
  }

  void EmpPrintFunc() {
    print("I'm Emp , My Id is $_comId");
  }
}

void main() {
  Emp e = new Emp("123","Ali",20); // 2 in one ->  emp + human
  e.printFunc();
  e.EmpPrintFunc();
}