import 'dart:io';

void main() {
  print('ask a question');
  int q;
  q = num.parse(stdin.readLineSync());


  //  q [1]
  //  a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100).
  // Write a Dart code that takes this list and makes a new list that has only the even


  // q[2]
  // a = [5, 10, 15, 20, 25]
  // and makes a new list of only the first and last elements of the given list


  // q[3]
  // Exercise 2: Concatenate two lists index-wise
  // Write a program to add two lists index-wise. Create a new list that contains the 0th
  // index item from both the list, then the 1st index item, and so on till the last element.
  // any leftover items will get added at the end of the new list.
  // Given:
  // list1 = ["M", "na", "i", "Ke"]
  // list2 = ["y", "me", "s", "lly"]
  // Expected output:
  // ['My', 'name', 'is', 'Kelly']


  // q[4]
  // Turn every item of a list into its square
  // Given a list of numbers. write a program to turn every item of a list into its square.
  // Given:
  // numbers = [1, 2, 3, 4, 5, 6, 7]
  // Expected output:
  // [1, 4, 9, 16, 25, 36, 49]


  // q[5]
  // Remove empty strings from the list of strings
  // list1 = ["Mike", "", "Emma", "Kelly", "", "Brad"]
  // Expected output:
  // ["Mike", "Emma", "Kelly", "Brad"]


  // q[6]
  // You have given a Dart list. Write a program to find value 20 in the list, and if it is present,
  // replace it with 200. Only update the first occurrence of an item.
  // Given:
  // list1 = [5, 10, 15, 20, 25, 50, 20]
  // Expected output:
  // [5, 10, 15, 200, 25, 50, 20


  switch (q) {
    case (1):
      List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
      List evennumber = [];
      for (int i = 0; i < a.length; i++) {
        if (a[i] % 2 == 0) {
          evennumber.add(a[i]);
        }
      }
      print(evennumber);
      break;

//_________________________________________________

case(2):
  {
  List a = [5, 10, 15, 20, 25];
  List fistandlist = [];


  fistandlist.add(a[0]);
  fistandlist.add(a[4]);

  print(fistandlist);
  break;
}

//-------------------------------------------------------------------------------
    case(3):
List list1=['m','na','i','ke'];
List list2=['y','me','s','lly'];

List result = [];
int maxLength = list1.length > list2.length ? list1.length : list2.length;

for (int i = 0; i < maxLength; i++) {
  String str = '';
  if (i < list1.length) {
    str += list1[i];
  }
  if (i < list2.length) {
    str += list2[i];
  }
  result.add(str);
}

print(result);
break;



//--------------------------------------------------------------
    case (4):

List a=[1, 2, 3, 4, 5, 6, 7];
List n=[];
for(var num in a){
n.add(num *num);
}

print(n);
break;
//_______________________________________________________________
    case(5):
 var list=["Mike","","Emma","Kelly","","Brad"];
   var list1=[];
   for(var i in list){
 if(i==""){
   continue;
 }
 list1.add(i);
   }
   print(list1);
break;
//--------------------------------------------------------------
    case(6):
  var list1 = [5, 10, 15, 20, 25, 50, 20];

  for (int i = 0; i < list1.length; i++) {
    if (list1[i] == 20) {
      list1[i] = 200;
      break;
    }
  }

  print(list1);

break;
 }


  }

















