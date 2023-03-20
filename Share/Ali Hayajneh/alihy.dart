

 import 'dart:io';

 List customerOrders=[];
 Map menu={};

void displayMenu(var welcomingMessage){

    print(welcomingMessage);

    print("                    SANDWICH");
    print("-------------------------------------------------------");
    print("1-HOTDOG                                            74");
    print("2-CHICKEN SANDWICH                                  94");
    print("3-VEGETABLE SANDWICH                                84");
    print("4-FRESH TUNA SANDWICH                               104");
    print("5-TOMATO AND MOZAZARELLA CHEESE SANDWICH             84");
    print("                   BURGER SANDWICH                                ");
    print("----------------------------------------------------------");
    print("6-CHEESE BURGER                                      94");
    print("7-BEEF BURGER                                        94");
    print("8-CHICKEN BURGER                                     94");
    print("9-VEGETABLE BURGER                                   84");
    print("10-FISH BURGER                                       104");
    print("All served with french and fresh salad");
 }

   void storedDishes(){

    menu={1:["HOTDOG",74],2:["CHICKEN SANDWICH",94],3:["VEGETABLE SANDWICH",84],4:["FRESH TUNA SANDWICH",104],5:["TOMATO AND MOZAZARELLA CHEESE SANDWICH",74],6:["CHEESE BURGER",94],
     7:["BEEF BURGER",94],8:["CHICKEN BURGER",94],9:["VEGETABLE BURGER",84],10:["FISH BURGER",104]};

   }

     void customerOrder(){

    print("DEAR CUSTOMER SELECT FROM MENU ABOVE ACCORDING TO THE NUMBER:");
    print(" TO STOP ORDERING PRINT -1");
    int sum=0;
    int dishNumber;

      while (dishNumber != 0) {
        dishNumber = int.parse(stdin.readLineSync());

        if (dishNumber > 0 && dishNumber<=10) {
          customerOrders.add(dishNumber);
        }
      }

        var remove;
        print("DO YOU WANT TO REMOVE AN ORDER:\n 1.print y to remove.\n 2.print n nt to remove.");
         while(remove!="n"){
           remove=stdin.readLineSync();
           if(remove='y'

         }


   }

   void printBill(){
     int sum=0;
       print("DISH NUMBER   DISH NAME    DISH PRICE");
       print("--------------------------------------");
      for(var items in customerOrders){
        print("${items}   ${menu[items][0]}     ${menu[items][1]}");
      }
       for(var item in customerOrders){

         sum+=menu[item][1];
       }
       print("------------------------");

       print("TOTAL = $sum ");


   }


void main(List<String> arguments) {
  storedDishes();
  displayMenu("WELCOME OUR DEAR CUSTOMER ,WE ARE PLEASED TO SERVE YOU ");
  customerOrder();
  printBill();




}
