void main() {
  // data can be words - numbers - collections - date - boolean
  // words --> String data type
  print("String data type");
  String name = "Ali";
  String name2 = 'Ali';
  print(name);
  print(name2);

  //numbers --> integer (int) OR fractions (double)
  print("Numbers data types");
  int n = 1; // int n =2.5; //ERROR
  double n1 = 23.34;
  print(n);
  print(n1);

  //collections are (Lists , Maps , Sets) we will study them later.

  //boolean
  print("Boolean data types");
  bool b1 = true;
  bool b2 = false;
  print(b1);
  print(b2);
  //note all numbers are true except 0 BUT you can't initialize boolean variable using numbers --> bool b=1;//ERROR
}
