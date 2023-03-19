import 'dart:io';

 void main() {
   var q;
   print("Enter your question :");
   q = num.parse(stdin.readLineSync());
   switch (q) {
     case(1):
       {
         print("Question 1 ");


         var num = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
         var num1 = [];
         for (var i in num) {
           if (i % 2 == 0) {
             num1.add(i);
           }
         }
         print(num1);
         break;
       }
     case(2):
       {
         print("Question 2 ");

         var list1 = [5, 10, 15, 20, 25];
         var m = [];
         m.addAll([list1.first, list1.last]);
         print(m);
         break;
       }
     case(3):
       {
         print("Question 3 ");
         var list1 = ["M", "na", "i", "Sha"];
         var list2 = ["y", "me", "s", "ima"];
         var list3 = [];
         int m = list2.length;
         for (int i = 0; i < m; i++) {
           list3.add(list1[i] + list2[i]);
         }
         print(list3);
         break;
       }
     case(4):
       {
         print("Question 4 ");
         var list = [1, 2, 3, 4, 5, 6, 7];
         var list1 = [];
         for (var i in list) {
           list1.add(i * i);
         }
         print(list1);
         break;
       }
     case(5):
       {
         print("Question 5 ");
         var list = ["Mike", "", "Emma", "Kelly", "", "Brad"];

         var list1 = [];
         for (var i in list) {
           if (i == "") {
             continue;
           }
           list1.add(i);
         }
         print(list1);
         break;
       }
     case(6):
       print("Question 6 ");
       var list = [5, 10, 15, 20, 25, 50, 20];
       var s = [];
       for (var i in list) {
         list [3] = 200;
         break;
       }

       print(list);

   break;
}
    default:
}
     print("Wrong input.");
}
}


