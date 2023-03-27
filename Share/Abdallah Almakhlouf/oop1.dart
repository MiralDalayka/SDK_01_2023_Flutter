import 'dart:io';

// class Human{
//   String city;
//   String nationality;
//   Human({String n="*",String m="**"}){
//     city=n;
//     nationality=m;
//   }
//   void info(){
//     print('you are from $city');
//     print('you are from $nationality');
//   }
//
// }
// void main(){
//   var city=stdin.readLineSync();
//    var nationality=stdin.readLineSync();
//   Human x=Human(n: city,m: nationality );
// x.info();
//   // x.city=stdin.readLineSync();
//   // print('enter your nationaltey');
//   // x.nationality=stdin.readLineSync();
//   // x.info();
//
//
// }
class Vehicle {
  int speed ;
  int passenger ;
  String fuel;
  Vehicle(String f){
     speed = 0;
     passenger = 1;
     fuel=f;
     print("******");
  }
  void go() {
    print("Go Function");
  }
  void stop() {
    print("Stop Function");
  }
  void changedirction() {
    print("Change Direction Function");

  }
}
class Car extends Vehicle{
  String model;
  int doors;
  String autoMaker;
  Car(this.model, this.doors, this.autoMaker,String f) : super(f) {
    print("^^^");
  }
  _radio(){
    print("no body touch my radio");
  }
  windishieldwiper(){
    print("0");

  }

}

void main(){
  Car c = Car("&",1,"*","@");
  print(c.speed);
}
