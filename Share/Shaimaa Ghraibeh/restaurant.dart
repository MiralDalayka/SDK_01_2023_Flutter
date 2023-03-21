import 'dart:io';

 void main(){
  menu();
 order();
}

void menu(){

  print("The restaurant menu");

    print("SANDWICHES: ");
    var sandwiches = {'1.Hot dog': "7\$", '2.Chicken sandwich': "9\$" , '3.Vegetable sandwich':"8\$" , '4.Fresh tuna sandwich': "10\$" , '5.Tomato and mozzarella':"8\$"};
    print(sandwiches);
    print("BURGER:");
    var burger = {'6.Cheese burger': "9\$" ,  '7.Beef burger':"9\$" , '8.Chicken burger':"9\$" , '9.Vegetable burger':"8\$" , '10.Fish burger':"10\$" };
    print(burger);



}
order() {
  var val = {1: 7, 2: 9, 3: 8, 4: 10, 5: 8, 6: 9, 7: 9, 8: 9, 9: 8, 10: 10};
  var end;
  var total = 0;
  var i;
  var r;
  do {
    print("Enter the order number : ");
    r = num.parse(stdin.readLineSync());
    print("Enter 0 if you finish ");
    end = num.parse(stdin.readLineSync());
    for (i = 1; i < val.length; i++) {
      if (r == i) {
        total += val[i];
      }
    }
  } while (end != 0);
  print("Enter 1 if you want to change");
  var d = num.parse(stdin.readLineSync());
  if (d == 1) {
    print("Enter your removed order");
    var remove = num.parse(stdin.readLineSync());
    if (remove == r) {
      for (i = 1; i < val.length; i++) {
        if (r == i) {
          total -= val[i];
        }
      }
    }
    else {
      print("wrong input");
    }
  }
    print("Your total order= $total\$ ");

}
   
    


