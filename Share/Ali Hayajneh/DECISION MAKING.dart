import 'dart:ffi';
import 'dart:io';

void main() {
  // Q1
  //      int? number = int.parse(stdin.readLineSync()!);
  //
  //      if(number>0){
  //        print("the number is positive");
  //      }
  //      else{
  //        print("the number is negative");
  //      }
  //Q2

  // int? number = int.parse(stdin.readLineSync()!);
  //
  // if(number ==0){
  //   print("the number is even");
  // }
  // else{
  //   print("the number is odd");
  // }
  // Q3
  // int? number1 = int.parse(stdin.readLineSync()!);
  // int? number2 = int.parse(stdin.readLineSync()!);
  //
  //
  // if(number1==number2){
  //           print("equal");
  //        }
  //        else{
  //           print("not equal");
  //         }

  // Q4
  // int? year = int.parse(stdin.readLineSync()!);
  //
  // if(year%4==0 && year%100!=0){
  //
  //   print("leap year");
  // }
  // else if( year % 100==0 && year%400==0){
  //
  //   print("leap year");
  // }
  //
  // else{
  //   print ("common year");
  // }

  //Q5
  /*
                  int? age = int.parse(stdin.readLineSync()!);

                        if((age>0 && age<18))  {

                           print(" you are not allowed to vote");
                        }
                         else if(age<=0){
                           print("wrong entry ");
                        }

                        else{
                           print("Congratulation!You are eligible for casting your vote");
                        }
                       */

  //Q6
  /*
                         int? m = int.parse(stdin.readLineSync()!);
                         int n;

                         if(m>0){
                            n=1;
                         }

                         else if (m==0){

                            n=0;
                         }
                         else{
                            n=-1;
                         }
                            print(n);

                         */

  //Q7
  /*
                    print("enter first number:");
                    int? first = int.parse(stdin.readLineSync()!);
                    print("enter second number:");
                    int? second = int.parse(stdin.readLineSync()!);
                    print("enter third number:");
                    int? third = int.parse(stdin.readLineSync()!);

                    if(first>second && first>third){
                       print("first number is the largest");
                    }
                   else if(second>first && second>third){
                       print("second number is the largest");
                    }
                    else if(third>first && third>second){
                       print("third number is the largest");
                    }
*/
  //Q8

  // double? temp = double.parse(stdin.readLineSync()!);
  //
  // if(temp<0){
  //   print("freezing");
  // }
  // else if(temp>=0 && temp<10){
  //   print("very cold weather ");
  // }
  // else if(temp>=10 && temp<20){
  //   print("cold weather");
  // }
  // else if(temp>=20 && temp<30){
  //   print("normal in temp");
  // }
  // else if(temp>=30 && temp<40){
  //   print("it is hot");
  // }
  // else if(temp>=40){
  //   print("it is very hot");
  // }

  //Q9

  //  print("enter first angle");
  // double? firstAngle = double.parse(stdin.readLineSync()!);
  //  print("enter second angle");
  //  double? secondAngle = double.parse(stdin.readLineSync()!);
  //  print("enter third angle");
  //  double? thirdAngle = double.parse(stdin.readLineSync()!);
  //
  //  if(firstAngle+secondAngle+thirdAngle==180){
  //
  //    print("it is a triangle");
  //  }
  //  else{
  //
  //    print("it is not a valid triangle");
  //  }

  //Q10
  //  print("enter a number:");
  // int? dayNumber = int.parse(stdin.readLineSync()!);
  //
  // switch(dayNumber) {
  //   case 1:
  //     print("SUNDAY");
  //     break;
  //   case 2:
  //     print("MONDAY");
  //     break;
  //   case 3:
  //     print("TUESDAY");
  //     break;
  //   case 4:
  //     print("WEDNESDAY");
  //     break;
  //   case 5:
  //     print("THURSDAY");
  //     break;
  //   case 6:
  //     print("FRIDAY");
  //     break;
  //   case 7:
  //     print("SATURDAY");
  //     break;
  //
  //   default:
  //     print("invalid entry");
  //     break;
  //
  //
  // }

  //Q11

 /* print("enter a number:");
  int? monthNumber = int.parse(stdin.readLineSync()!);

  switch (monthNumber) {
    case 1:
      print("JAN");
      break;
    case 2:
      print("FEB");
      break;
    case 3:
      print("MAR");
      break;
    case 4:
      print("APR");
      break;
    case 5:
      print("MAY");
      break;
    case 6:
      print("JUN");
      break;
     case 7:
      print("JUL");
      break;
    case 8:
      print("AUG");
      break;
    case 9:
      print("SEP");
      break;
    case 10:
      print("OCT");
      break;
    case 11:
      print("NOV");
      break;
    case 12:
      print("DEC");
      break;

    default:
      print("invalid entry");
      break;
  }*/

                         //Q12


           //  print("enter the mark:");
           // double? mark = double.parse(stdin.readLineSync()!);
           //
           //  if(mark>=90 && mark<=100){
           //    print("Grade A");
           //  }
           //
           //  else if(mark>=80 && mark<90){
           //    print("Grade B");
           //  }
           //  else if(mark>=70 && mark<80){
           //    print("Grade C");
           //  }
           //  else if(mark>=60 && mark<70){
           //    print("Grade D");
           //  }
           //  else if(mark>=40 && mark<60){
           //    print("Grade E");
           //  }
           //  else if(mark<40 && mark>=0){
           //    print("Grade F");
           //  }
           //  else if(mark>100 || mark <0){
           //    print("wrong ENTRY");
           //  }

                    //Q14

               /*print("enter first number:");
               double? firstNumber = double.parse(stdin.readLineSync()!);
               print("enter operator:");
               String? operator=stdin.readLineSync()!;
               print("enter second number:");
               double? secondNumber = double.parse(stdin.readLineSync()!);

               switch(operator) {
                 case "+":
                   print(firstNumber + secondNumber);

                   break;

                 case "-":
                   print(firstNumber - secondNumber);

                   break;

                 case "*":
                   print(firstNumber * secondNumber);

                   break;

                 case "/":
                   print(firstNumber / secondNumber);

                   break;

                 default:
                   print("invalid operator");
               }*/

                      //Q15

                  /*print("enter a letter");
                  String? letter=stdin.readLineSync()!;

                  switch(letter){
                    case "a":
                    case "A":
                    case "e":
                    case "E":
                    case "u":
                    case "U":
                    case "i":
                    case "I":
                    case"o":
                    case "O":
                      print("the letter is a vowel");
                          break;
                    default:
                      print("the letter is a consonant ");

                  }*/





















}
