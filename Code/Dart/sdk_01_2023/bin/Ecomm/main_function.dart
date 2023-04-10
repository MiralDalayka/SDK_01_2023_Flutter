import 'dart:io';

import 'control.dart';

void main() {
  SystemClass object = SystemClass();
  print("Welcome,\nFor admin access enter 1\nFor customer access enter 2");
  int choice = num.parse(stdin.readLineSync());
  if (choice == 1) {
    stdout.write("Enter You Name: ");
    var name = stdin.readLineSync();
    stdout.write("Enter your id: ");
    var id = stdin.readLineSync();
    object.runAdminMode(name, id);
  } else {
    object.runGuestMode();
  }
}
