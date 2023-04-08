class A {
  printA() {
    print("I'm in class A");
  }
}

class B {
  printB() {
    print("I'm in class B");
  }
}

class C implements A, B {
  printC() {
    print("I'm in class C");
  }

  @override
  printA() {
    print("I 'm Print A But in c class");
  }

  @override
  printB() {
    // TODO: implement printB
  }
}

void main() {
  C object = C();
  object.printA();
}
