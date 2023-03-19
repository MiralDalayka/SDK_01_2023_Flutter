import 'dart:io';

void isPosOrNig() {
  print("Write a Dartto check if the number is pos or neg");
  stdout.write("enter your number: ");
  var number = num.parse(stdin.readLineSync());
  if (number == 0) {
    print("0");
  } else if (number < 0) {
    print("neg");
  } else
    print("pos");
}

void isEvenOrOdd() {
  print("Write a Dartto check if the number is Even or odd");
  stdout.write("enter your number: ");
  var number = num.parse(stdin.readLineSync());
  if (number % 2 == 0)
    print("even");
  else
    print("odd");
}

void isEqual() {
  print(
      "Write aDartto accept two integers and check whether they are equal or not");
  stdout.write("enter your tow number: ");
  var num1 = num.parse(stdin.readLineSync());
  var num2 = num.parse(stdin.readLineSync());

  if (num1.compareTo(num2) == 0)
    print("equal");
  else
    print("not equal");
}

void isLeap() {
  print("Write aDartto find whether a given year is a leap year or not");
  stdout.write("enter your year: ");
  var year = num.parse(stdin.readLineSync());
  if (year % 4 != 0)
    print("common year");
  else if (year % 100 != 0)
    print("leap year");
  else if (year % 400 == 0)
    print("leap year");
  else
    print("common year");
}

void isVote() {
  print(
      "Write aDartto read the age of a candidate and determine whether it is eligible for casting his/her own vote");
  stdout.write("enter your year: ");
  var year = num.parse(stdin.readLineSync());
  if (year >= 0 && year <= 100) {
    if (year >= 18) {
      print("Congratulation! You are eligible for casting your vote.");
    } else {
      print("can't vote");
    }
  } else {
    print("Wrong entry");
  }
}

void isInteger() {
  print(
      "Write aDartto read the value of an integer m and display the value of n is 1 when m is larger than 0, 0 when m is 0 and -1 when m is less than 0.");

  print("Enter your number");
  var number = num.parse(stdin.readLineSync());
  number == 0
      ? print("0")
      : number > 0
          ? print("1")
          : print("-1");
}

void maxNumber() {
  print("Write aDartto find the largest of three numbers");
  print("Enter Your 3 number:");
  var number1 = num.parse(stdin.readLineSync());
  var number2 = num.parse(stdin.readLineSync());
  var number3 = num.parse(stdin.readLineSync());
  print("1st Number = $number1, 2nd Number = $number2, 3rd Number = $number3");
  if (number1 > number2 && number1 > number3) {
    print(number1);
  } else if (number2 > number1 && number2 > number3) {
    print(number2);
  } else {
    print(number3);
  }
}

void temp() {
  print(
      "write aDartto read temperature a centigrade and display a suitable message according to temperature state below");
  print("enter your temp");
  int x = num.parse(stdin.readLineSync());
  if (x < 0) {
    print("then freez wther");
  } else if (x >= 0 && x <= 10) {
    print("then Very Cold weather");
  } else if (x > 10 && x <= 20) {
    print("then Cold weather");
  } else if (x > 20 && x <= 30) {
    print("then Normal in Temp");
  } else if (x > 30 && x <= 40) {
    print("then Its Hot");
  } else if (x >= 40) {
    print("then Its Very Hot");
  }
}

void trianglee() {
  print(
      "Write a program in Dart to read any day number in integer and display day name in the word.");
  print("enter your 3 number");
  int x = num.parse(stdin.readLineSync());
  int y = num.parse(stdin.readLineSync());
  int z = num.parse(stdin.readLineSync());
  if (x + y + z == 160) {
    print("The triangle is  valid");
  } else {
    print("The triangle is not valid");
  }
}

void nday() {
  print(
      "Write a program in Dartto read any day number in integer and display day name in the word");
  print("enter your number Day");
  var numday = num.parse(stdin.readLineSync());
  if (numday == 1) {
    print("Sunday");
  } else if (numday == 2) {
    print("Monday");
  } else if (numday == 3) {
    print("Tursday");
  } else if (numday == 4) {
    print("Wednesday");
  } else if (numday == 5) {
    print("Thursday");
  } else if (numday == 6) {
    print("Friday");
  } else if (numday == 7) {
    print("Saturday");
  } else {
    print("wrong entry");
  }
}

void nmonth() {
  print(
      "Write a program in Dartto read any Month Number in integer and display Monthname in the word");
  print("enter your number Month");
  var numday = num.parse(stdin.readLineSync());
  if (numday == 1) {
    print("January");
  } else if (numday == 2) {
    print("February");
  } else if (numday == 3) {
    print("March");
  } else if (numday == 4) {
    print("April");
  } else if (numday == 5) {
    print("May");
  } else if (numday == 6) {
    print("June");
  } else if (numday == 7) {
    print("July");
  } else if (numday == 8) {
    print("August");
  } else if (numday == 9) {
    print("September");
  } else if (numday == 10) {
    print("October");
  } else if (numday == 11) {
    print("November");
  } else if (numday == 12) {
    print("December");
  } else {
    print("wrong entry");
  }
}

void evaluation() {
  print(
      "Write a Dart programto input marks of five subjects Physics, Chemistry, Biology, Mathematics and Computer, calculate percentage and grade according to given conditions");
  print("Enter your Marks");
  var mark = num.parse(stdin.readLineSync());
  if (mark >= 90) {
    print("A");
  } else if (mark >= 80) {
    print("B");
  } else if (mark >= 70) {
    print("C");
  } else if (mark >= 60) {
    print("D");
  } else if (mark >= 40) {
    print("E");
  } else {
    print("F");
  }
}

void rival() {
  print(
      "Company wants to give bouse to it’s employees based on their salaries Calculate how much each employee will get after bounce");
  print("enter your salary");
  var salary = num.parse(stdin.readLineSync());
  var x;
  if (salary >= 2000) {
    x = salary * 0.15;
  } else if (salary >= 1300 && salary < 2000) {
    x = salary * 0.20;
  } else if (salary >= 700 && salary < 1300) {
    x = salary * 0.35;
  } else if (salary < 700) {
    x = salary * 0.40;
  }
  var total = salary + x;
  print(total);
}

void calculator() {
  print(
      """Write a Dart programto create menu driven calculator that performs basic arithmetic 
  operations (add, subtract, multiply and divide) using switch case and functions. The calculator should input two numbers and an operator from user.""");
  print("Enter tow number");
  var num1 = num.parse(stdin.readLineSync());
  var num2 = num.parse(stdin.readLineSync());
  print("Enter Opreter:+,-,*,/ :");
  dynamic operater = stdin.readLineSync();
  switch (operater) {
    case "+":
      {
        print("$num1 + $num2 =" " $num1+$num2");
        break;
      }
    case "-":
      {
        print("$num1 - $num2 =" " $num1-$num2");
        break;
      }
    case "*":
      {
        print("$num1 * $num2 =" " $num1*$num2");
        break;
      }
    case "/":
      {
        print("$num1 / $num2 =" " $num1/$num2");
        break;
      }
    default:
      print("Error!operator is not correct");
  }
}

void alphabet() {
  print(
      "Write a Dart programto input an alphabet and check whether it is vowel or consonant using switch case. ");
  print("enter your Lowercase letters");
  dynamic letter = stdin.readLineSync();
  switch (letter) {
    case "a":
      {
        print("this leter a vowel : $letter");
        break;
      }
    case "e":
      {
        print("this leter a vowel : $letter");
        break;
      }
    case "i":
      {
        print("this leter a vowel : $letter");
        break;
      }
    case "o":
      {
        print("this leter a vowel : $letter");
        break;
      }
    case "u":
      {
        print("this leter a vowel : $letter");
        break;
      }
    default:
      print("this leter a consonant : $letter");
  }
}

void main() {
  var q;
  print("Enter your Number Question");
  q = num.parse(stdin.readLineSync());
  switch (q) {
    case (1):
      {
        isPosOrNig();
        break;
      }
    case (2):
      {
        isEvenOrOdd();
        break;
      }
    case (3):
      {
        isEqual();
        break;
      }
    case (4):
      {
        isLeap();
        break;
      }
    case (5):
      {
        isVote();
        break;
      }
    case (6):
      {
        isInteger();
        break;
      }
    case (7):
      {
        maxNumber();
        break;
      }
    case (8):
      {
        temp();
        break;
      }
    case (9):
      {
        trianglee();
        break;
      }
    case (10):
      {
        nday();
        break;
      }
    case (11):
      {
        nmonth();
        break;
      }
    case (12):
      {
        evaluation();
        break;
      }
    case (13):
      {
        rival();
        break;
      }
    case (14):
      {
        calculator();
        break;
      }
    case (15):
      {
        alphabet();
        break;
      }
    default:
      print("Invalid number");
  }
}
