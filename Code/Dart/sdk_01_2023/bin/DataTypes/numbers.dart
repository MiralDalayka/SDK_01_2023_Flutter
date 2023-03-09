void main(){
  //in this lecture we will study number data types in detailed
  //1. initials an integer variable
  int number = 10;

  print("Numbers proprieties");
  print(number.hashCode);
  print("number.isFinite -> ${number.isFinite}"); //does this variable is Finite? means that the number is between (-inf , inf)
  print("number.isInfinite -> ${number.isInfinite}");//does this variable is  InFinite? means that the number is -inf or inf or null
  print("number.isNegative -> ${number.isNegative}"); //return true if number < 0
  print("number.sign -> ${number.sign}"); //return -1 if number < 0 OR 0 if number = 0 OR 1 if number > 0
  print("number.isEven -> ${number.isEven}"); //return true if number % 2 == 0
  print("number.isOdd -> ${number.isOdd}"); //return true if number % 2 != 0
  print("number1.remainder() -> ${number.remainder(6)}"); //number1.remainder(number2) --> return the remainder of number1 % number 2


  print('*******************************');

//here we will learn some functions we might use with numbers
  var number1 = 2.1;
  print("number1.abs() -> ${number1.abs()}");
  print("number1.ceil() -> ${number1.ceil()}"); // return the nearest + largest integer : 2.1 --> 3 OR 3.9 --> 4
  print("number1.floor() -> ${number1.floor()}");// return the nearest + smallest integer : 2.1 --> 2 OR 3.9 --> 3
  print("number1.compareTo() -> ${number1.compareTo(10)}"); // compare 2 numbers : number1.compareTo(number2)
                                                           //return -1 if num1<num2 -- return 0 if num1==num2 -- return 1 if num1 > num2
  print("number1.round() -> ${number1.round()}"); // 1.2 - > 1 AND 1.8 -> 2 AND 1.5 -> 2


  print('*******************************');
  //these functions change the data type of the VALUE of variable NOT the original variable .
  //means that:
  //BEFORE: number2 is double
  //number2.toInt() -->  this will return NEW value =  (number 2 as int ) = 0
  //AFTER: number2 will stay  0.325341 not 0
  double number2 = 0.325341;
  print("BEFORE $number2");
  print(number2.toDouble());
  print(number2.toInt());
  print(number2.toString());
  print(number2.truncate());
  print("AFTER $number2");

}