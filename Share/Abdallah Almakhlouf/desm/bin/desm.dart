

import 'dart:io';
//Write a Dart to find the largest of three numbers.
dynamic maxss(){
  int x =num.parse(stdin.readLineSync());
  int y =num.parse(stdin.readLineSync());
  int z =num.parse(stdin.readLineSync());

  print("1st Number = $x, 2nd Number = $y, 3rd Number = $z");
  if(x>y && x>z){
    return x;
  }else if( y>x && y>z){

    return y;

  }else {
    return z;
  }


}

//Write a Dart to read temperature a centigrade and display a suitable
// message according to temperature state below
dynamic tempp(){

  int x=num.parse(stdin.readLineSync());
  if(x<0){
    return 'then freez wther';
  }else if(x>=0 && x<=10){
    return 'then Very Cold weather';
  }
  else if(x>10 && x<=20){

    return ' then Cold weather';
  }else if(x>20 && x<=30){
    return ' then Normal in Temp';
  }else if(x>30 && x<=40 ){
    return' then Its Hot';
  }else if(x>=40){
    return'then Its Very Hot';

  }

}

//Write a Dart to check whether a triangle can be formed by the given
// value for the angles
dynamic trianglee(){
  int x =num.parse(stdin.readLineSync());
  int y =num.parse(stdin.readLineSync());
  int z =num.parse(stdin.readLineSync());
  if(x+y+z==160){
    return 'The triangle is  valid';
  }else{
    return 'The triangle is not valid';
  }
}

//Write a program in Dart to read any day number in integer and
// display day name in the word.
dynamic dayNumber(){
  print("Enter a day number (1-7):");
  int dayy=num.parse(stdin.readLineSync());
  switch(dayy){
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number");

  }}

//Write a program in Dart to read any Month Number in integer
// and display Month name in the word
monthNmber(){
  print("Enter a month number (1-12):");
  int month=num.parse(stdin.readLineSync());
  switch(month){
    case 1:
      print("January");
      break;
    case 2:
      print("February");
      break;
    case 3:
      print("March");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("May");
      break;
    case 6:
      print("June");
      break;
    case 7:
      print("July");
      break;
    case 8:
      print("August");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("October");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("December");
      break;
    default:
      print("Invalid day number");

  }


}

//Write a Dart program to input marks of five subjects Physics,
// Chemistry, Biology, Mathematics and Computer, calculate
// percentage and grade according to given conditions
totalSubjectss(){

  print("Enter marks of five subjects:");

  double physics = double.parse(stdin.readLineSync());
  double chemistry = double.parse(stdin.readLineSync());
  double biology = double.parse(stdin.readLineSync());
  double mathematics = double.parse(stdin.readLineSync());
  double computer = double.parse(stdin.readLineSync());

  double totalMarks = physics + chemistry + biology + mathematics + computer;
  double percentage = (totalMarks / 500) * 100;

  String grade;

  if (percentage >= 90) {
    grade = "A";
  } else if (percentage >= 80) {
    grade = "B";
  } else if (percentage >= 70) {
    grade = "C";
  } else if (percentage >= 60) {
    grade = "D";
  } else if (percentage >= 40) {
    grade = "E";
  } else {
    grade = "F";
  }

  print("Total marks: $totalMarks");
  print("Percentage: $percentage%");
  print("Grade: $grade");


}

//Company wants to give bouse to it’s employees based on their
// salaries:
// Calculate how much each employee will get after bounce
salary(){
  List<double> salaries = [1000, 1500, 2000, 2500, 500];

  double ratio1 = 0.15;
  double ratio2 = 0.2;
  double ratio3 = 0.35;
  double ratio4 = 0.4;

  for (double salary in salaries) {
    double bonus = 0;
    if (salary > 2000) {
      bonus = salary * ratio1;
    } else if (salary > 1300) {
      bonus = salary * ratio2;
    } else if (salary > 700) {
      bonus = salary * ratio3;
    } else {
      bonus = salary * ratio4;
    }
    double totalSalary = salary + bonus;
    print("Salary: ${salary.toStringAsFixed(2)} \t Bonus: ${bonus.toStringAsFixed(2)} \t Total: ${totalSalary.toStringAsFixed(2)}");
  }


}


//Write a Dart program to create menu driven calculator that
// performs basic arithmetic operations (add, subtract, multiply and
// divide) using switch case and functions. The calculator should input
// two numbers and an operator from user
calculator(){
  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync());

  print("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync());

  print("Enter the operation (+, -, *, /): ");
  String op = stdin.readLineSync();

  switch(op) {
    case '+':
      print("Result: ${add(num1, num2)}");
      break;
    case '-':
      print("Result: ${subtract(num1, num2)}");
      break;
    case '*':
      print("Result: ${multiply(num1, num2)}");
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Division by zero!");
      } else {
        print("Result: ${divide(num1, num2)}");
      }
      break;
    default:
      print("Error: Invalid operation!");
  }
}

double add(double num1, double num2) {
  return num1 + num2;
}

double subtract(double num1, double num2) {
  return num1 - num2;
}

double multiply(double num1, double num2) {
  return num1 * num2;
}

double divide(double num1, double num2) {
  return num1 / num2;

}



//Write a Dart program to input an alphabet and check whether it is
// vowel or consonant using switch case
alphabet(){
  print("Enter an alphabet: ");
  String alphabet = stdin.readLineSync().toLowerCase();

  switch (alphabet) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("$alphabet is a vowel");
      break;
    default:
      print("$alphabet is a consonant");
  }
}

void main() {
  print('Enter the question');
  int q = num.parse(stdin.readLineSync());

  switch (q) {
    case 1: {print(maxss());}break;
    case 2:{ print(tempp());}break;
    case 3:{ print(trianglee());}break;
    case 4:{ print(dayNumber());}break;
    case 5:{ print(monthNmber());}break;
    case 6:{ print(totalSubjectss());}break;
    case 7:{ print(salary());}break;
    case 8:{ print(calculator());}break;
    case 9:{ print(alphabet());}break;
  }
}