import 'dart:io';

void main() {
  //4. while loop
  print("Enter 2 numbers :");
  var number1 = num.parse(stdin.readLineSync());
  var number2 = num.parse(stdin.readLineSync());
  var sum = 0;
  while (number1 <= number2) {
    sum += number1;
    number1++;
  }
  print("The summation is = $sum");
}
