import 'dart:io';

void main() {
  int a, s, d;
  a = num.parse(stdin.readLineSync());
  s = num.parse(stdin.readLineSync());
  d = num.parse(stdin.readLineSync());
  if (a > s) {
    if (a > d)
      print(a);
    else
      print(d);
  } else {
    if (s > d)
      print(s);
    else
      print(d);
  }
}
//--------
import 'dart:io';

void main() {
  // int a, s, d;
  // a = num.parse(stdin.readLineSync());
  // s = num.parse(stdin.readLineSync());
  // d = num.parse(stdin.readLineSync());
  // if (a > s) {
  //   if (a > d)
  //     print(a);
  //   else
  //     print(d);
  // } else {
  //   if (s > d)
  //     print(s);
  //   else
  //     print(d);
  // }
  int c;
  c = num.parse(stdin.readLineSync());
  if (c < 0) {
    print("0<then Freezing weather");
  } else {
    if (c > 0 && c < 10) {
      print("0-10 then Very Cold weather");
    } else {
      if (c > 10 && c < 20) {
        print("10-20 then Cold weather");
      } else {
        if (c > 20 && c < 30) {
          print("20-30 then Normal in Temp");
        } else {
          if (c > 30 && c < 40) {
            print("30-40 then Its Hot");
          } else {
            if (c > 40) {
              print(" >=40 then Its Very Hot");
            }
          }
        }
      }
    }
  }
}
class vehicle {
  String Name;
  int age;
  int Size;
  String HairColor;

  vehicle(String a) {

  }

  void Walk(Distance) {}

  void Eat(Food) {}

  void Speak(Language) {}
}
    class Person extends vehicle{
      String  Name;
      int age;
      int Size;
      String HairColor;

      Person(this.Name, this.age, this.Size, this.HairColor,String a) : super(a);
}
