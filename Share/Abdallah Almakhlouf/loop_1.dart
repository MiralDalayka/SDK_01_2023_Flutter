import 'dart:io';

void main() {
  print('Enter the question');
  int q=num.parse(stdin.readLineSync());
  switch (q){
    case 1:{print(loop1());}break;
    case 2:{print(sumation());}break;
    case 3 :{print(mul());}break;
    case 4:{print(evenNumber());}break;
    case 5:{print(pass());}break;
    case 6:{print(dig());}break;
    case 7 :{print(div());}break;
    case 8:{ print(threeInteger());}break;
    case 9: {print(convertt());}break;
  }
}
loop1(){
  for(int i=1;i<11;i++){
    print(i);
  }

}
sumation (){
  print("pleas enter tow number");
  num x=num.parse(stdin.readLineSync());
  int y=num.parse(stdin.readLineSync());
  int sum=0;
  for(int i=x;i<=y;i++){
    sum+=i;
  }
  return sum;
}
mul(){
  print("pleas enter  number");
  int x=num.parse(stdin.readLineSync());
  int mult;
  for(int i=1;i<=12;i++){
    mult=x*i;
    print("$x*$i=$mult");
  }
  return 'end';
}
evenNumber(){
  print("pleas enter number");
  int x=num.parse(stdin.readLineSync());
  for(int i=0;i<=x;i+=2){
    print(i);

  }
  return "end";
}
pass(){
  int wanted=1234;
  print("pleas enter your pass");
  int x=num.parse(stdin.readLineSync());
  if(x==wanted){
    print ("correct");
    return 'end';
  }
  else{
    while(x!=wanted){
      print("incorrect");

      break;
    }
    return 'end';
  }}
dig(){
  stdout.write('Enter an integer: ');
  int number = int.parse(stdin.readLineSync());


  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }

  print('The sum of the digits is: $sum');
}
div(){
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

threeInteger(){
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

convertt(){


  stdout.write('Input seconds: ');
  int seconds = int.parse(stdin.readLineSync());

  // Compute the number of hours, minutes, and seconds
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  seconds = seconds % 60;

  String time = hours.toString().padLeft(2, '0') + ':' +
      minutes.toString().padLeft(2, '0') + ':' +
      seconds.toString().padLeft(2, '0');
  print(time);
}