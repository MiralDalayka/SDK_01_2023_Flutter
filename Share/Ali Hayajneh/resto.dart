

import 'dart:io';

import 'Menues.dart';
import 'Order.dart';

void main(List<String> arguments) {

    runApp();


}

void runApp() {
  printMenueInputs();

  Order ord1=Order();
  ord1.insertOrder("PLEASE ENTER YOUR ORDER NUMBER AS SHOWN ABOVE ,TO STOP PRINT->0");
  ord1.printOrder();
  ord1.deleteOrder("IF YOU'D LIKE TO DELETE ANY ORDER ENTER ORDER NUMBER,TO STOP PRINT->0 ");
  ord1.printOrder();
}

void printMenueInputs() {
  Menues  men=Menues.c();
  men.storeDishes(Menues(Categories.SEAFOOD,10,"TUNA", 30));
  men.storeDishes(Menues(Categories.BEEF,2,"LAMB", 10));
  men.storeDishes(Menues(Categories.CHICKEN,1,"TURKEY", 4.12));
  men.storeDishes(Menues(Categories.SEAFOOD,4,"CALIMARI", 30));
  men.storeDishes(Menues(Categories.SEAFOOD,5,"MAKAREL", 30.40));
  men.storeDishes(Menues(Categories.BEEF,23,"ox", 30));
  men.storeDishes(Menues(Categories.CHICKEN,21,"ROASTED CHICKEN", 340));
  men.storeDishes(Menues(Categories.BEEF,100,"MANASAF", 200));
  men.storeDishes(Menues(Categories.BEVERAGE,50,"PEPSI", 2));



  for (var value in Categories.values) {
   men.printMenue(value);
  }
}
