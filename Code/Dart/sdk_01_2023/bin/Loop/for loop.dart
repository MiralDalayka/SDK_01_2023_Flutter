import 'dart:io';

void main() {
  // in dart we have 5 type of loop
  //1. for loop
  //2. for ..in loop we will study it later
  //3. for each loop we will study it later
  //4. while loop
  //5. do - while loop

  //1. FOR LOOP
  // write multiplication table on an input number
  print("Enter a number: ");
  var number = num.parse(stdin.readLineSync());
  for (int i = 1; i < 12; i++) {
    print("$i * $number = ${i * number}");
  }
}
