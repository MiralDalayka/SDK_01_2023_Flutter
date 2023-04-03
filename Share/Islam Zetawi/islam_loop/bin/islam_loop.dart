import 'dart:io';

void loop() {
  print("Write Dart codeto print numbers from 1 to 10");
  for (int i = 1; i < 11; i++) {
    print(i);
  }
}

void sumation() {
  print(
      "Write Dart code to print the summation of all numbers between 2 numbers");
  print("Pleas Enter Tow Number");
  num x = num.parse(stdin.readLineSync());
  int y = num.parse(stdin.readLineSync());
  int sum = 0;
  for (int i = x; i <= y; i++) {
    sum += i;
  }
  print("Sum = $sum");
}

void mul() {
  print("Write Dart codeto print the multiplication table of any number");
  print("Pleas Enter  Number");
  int x = num.parse(stdin.readLineSync());
  int mult;
  for (int i = 1; i <= 12; i++) {
    mult = x * i;
    print("$x*$i=$mult");
  }
  print("End");
}

void evenNumber() {
  print("Write Dart code to find the even numbers up to input number");
  print("pleas enter number");
  int x = num.parse(stdin.readLineSync());
  for (int i = 0; i <= x; i += 2) {
    print(i);
  }
  print("End");
}

void pass() {
  print(
      "Write Dart code to read a password until it is correct for wrong password print “Incorrect password” and for correct password print “Correct password”, The correct password is 1234");
  int wanted = 1234;
  print("pleas enter your pass");
  int x = num.parse(stdin.readLineSync());
  if (x == wanted) {
    print("correct");
    print("End");
  } else {
    while (x != wanted) {
      print("incorrect");

      break;
    }
    print("End");
  }
}

void dig() {
  print("Write a Dart program tocompute the sum of the digits of an integer");
  stdout.write('Enter an integer: ');
  int number = int.parse(stdin.readLineSync());
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }

  print('The sum of the digits is: $sum');
}

void div() {
  print(
      "Write a Dart program to print numbers between 1 to 100 which are divisible by 3, 5 and by both");
  var by3 = [];
  var by5 = [];
  var by3and5 = [];

  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      by3and5.add(i);
    } else if (i % 3 == 0) {
      by3.add(i);
    } else if (i % 5 == 0) {
      by5.add(i);
    }
  }

  print('Divided by 3: ${by3.join(', ')}');
  print('Divided by 5: ${by5.join(', ')}');
  print('Divided by 3 & 5: ${by3and5.join(', ')}');
}

void threeInteger() {
  print(
      """Write a Dart program that accepts three integers from the user and return true if the second number is greater than firstnumber and third number is greater than second number. If "abc" is true second number does not need to be greater than first number""");
  stdout.write('Input the first number: ');
  int firstNum = int.parse(stdin.readLineSync());

  stdout.write('Input the second number: ');
  int secondNum = int.parse(stdin.readLineSync());

  stdout.write('Input the third number: ');
  int thirdNum = int.parse(stdin.readLineSync());

  bool abc = true;
  bool result;
  if (abc) {
    result = (secondNum > firstNum) && (thirdNum > secondNum);
  } else {
    result = (secondNum > firstNum) && (thirdNum > secondNum);
  }

  print('The result is: $result');
}

void onvertt() {
  print("Write a Dart program to convert seconds to hour, minute and seconds");
  stdout.write('Input seconds: ');
  int seconds = int.parse(stdin.readLineSync());

  // Compute the number of hours, minutes, and seconds
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  seconds = seconds % 60;

  String time =
      '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  print(time);
}

void main() {
  print('Enter The Number Question');
  int q = num.parse(stdin.readLineSync());
  switch (q) {
    case 1:
      {
        loop();
        break;
      }
    case 2:
      {
        sumation();
        break;
      }

    case 3:
      {
        mul();
        break;
      }

    case 4:
      {
        evenNumber();
        break;
      }

    case 5:
      {
        pass();
        break;
      }

    case 6:
      {
        dig();
        break;
      }

    case 7:
      {
        div();
        break;
      }

    case 8:
      {
        threeInteger();
        break;
      }

    case 9:
      {
        onvertt();
        break;
      }
      print("invalid number");
  }
}
