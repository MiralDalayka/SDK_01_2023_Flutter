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
