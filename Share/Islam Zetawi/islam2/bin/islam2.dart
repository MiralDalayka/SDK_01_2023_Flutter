import 'dart:io';

void main() {
  var q;
  print("enter your number Question");
  q = num.parse(stdin.readLineSync());
  switch (q) {
    case (1):
      {
        print(
            """write a dart code that takes this list and makes a new list that has onle the even elemants of this list in it""");
        var list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
        var list2 = [];
        for (var i in list) {
          if (i % 2 == 0) {
            list2.add(i);
          }
        }
        print("$list2");

        break;
      }
    case (2):
      {
        stdout.write(
            """write a program that a list of number for exampel a=[5,10,15,20,25] 
        and makes a new list of only the first and last element of the given list.""");
        var list1 = [5, 10, 15, 20, 25];
        var list2 = [];
        list2.addAll([list1.first, list1.last]);
        print("$list2");
        break;
      }

    case (3):
      {
        print("""Write a program to add two lists index-wise. Create a new list 
        that contains the 0th index item from both the list, then the 1st index item, 
        and so on till the last element. any leftover items will get added at the end of the new list.""");

        var list1 = ["M", "na", "i", "Ke"];
        var list2 = ["y", "me", "s", "lly"];
        var list3 = [];
        int maxlength =
            list1.length > list2.length ? list1.length : list2.length;
        for (int i = 0; i < maxlength; i++) {
          String str = '';
          if (i < list1.length) {
            str += list1[i];
          }
          if (i < list2.length) {
            str += list2[i];
          }
          list3.add(str);
        }

        print(list3);

        break;
      }
    case (4):
      {
        print(
            "Given a list of numbers. write a program to turn every item of a list into its square");

        var list1 = [1, 2, 3, 4, 5, 6, 7];
        var list2 = [];
        for (var i = 0; i < list1.length; i++) {
          list2.add(list1[i] * list1[i]);
        }
        print("$list2");
        break;
      }
    case (5):
      {
        print("Remove empty strings from the list of strings");
        var list1 = ["Mike", "", "Emma", "Kelly", "", "Brad"];
        var list2 = [];
        for (var i = 0; i < list1.length; i++) {
          if (list1[i] == "") {
            continue;
          }
          list2.add(list1[i]);
        }
        print("$list2");
        break;
      }
    case (6):
      {
        print(
            "You have given a Dart list. Write a program to find value 20 in the list, and if it is present, replace it with 200. Only update the first occurrence of an item.");
        var list1 = [5, 10, 15, 20, 25, 50, 20];
        for (var i = 0; i < list1.length; i++) {
          if (list1[i] == 20) {
            list1[i] = 200;
            break;
          }
        }
        print("$list1");
        break;
      }
    default:
      print("wroing input");
  }
}
