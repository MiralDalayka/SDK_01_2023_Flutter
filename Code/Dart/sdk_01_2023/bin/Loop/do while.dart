import 'dart:io';

void main() {
  //5. d o while loop
//ask the user to enter a password
  int userPassword;
//define the correct password
  int correctPassword = 12345;
  do {
    print("Enter a password");
    userPassword = num.parse(stdin.readLineSync());
  } while (userPassword != correctPassword);
  print(("Thank you"));
}
