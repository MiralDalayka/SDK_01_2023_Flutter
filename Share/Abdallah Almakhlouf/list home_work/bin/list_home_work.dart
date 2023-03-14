import 'dart:io';

void main() {
  var q;
  print("your Question");
  q = num.parse(stdin.readLineSync());
  switch (q) {
    case (1):
      {
        print("q1");
        List list1 = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
        List even = [];
        for (int i = 0; i < list1.length; i++) {
          if (list1[i] % 2 == 0) {
            even.add(list1[i]);
          }
        }
        print(even);
        break;
      }
    case (2):
      {
        print("q2");
        var list1 = [5, 10, 15, 20, 25];
        var x = [];
        x.addAll([list1.first, list1.last]);
        print(x);
        break;
      }
    case (3):
      {
        var list1 = ['m', 'na', 'i', 'ke'];
        var list2 = ['y', 'me', 's', 'lly'];

        var list3 = [];
        int maxLength =
        list1.length > list2.length ? list1.length : list2.length;

        for (int i = 0; i < maxLength; i++) {
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
        var list1 = [1, 2, 3, 4, 5, 6, 7];
        var list2 = [];
        for (int i = 0; i < list1.length; i++) {
          list2.add(list1[i] * list1[i]);
        }
        print(list2);
        break;
      }
    case (5):
      {
        var list = ["hello", "take"];
        var list1 = ["dear", "sir"];
        var list2 = [];
        int maxLength = list.length > list1.length ? list.length : list1.length;
        for (int i = 0; i < maxLength; i++) {
          String str = '';
          if (i < list.length) {
            str += list[i];
          }
          if (i < list1.length) {
            str += list1[i];
          }
          list2.add(str);
        }

        print(list2);
        break;
      }
    case (6):
      {
        print("q6");
        var list = ["Mike", "", "Emma", "Kelly", "", "Brad"];
        var list1 = [];
        for (int i = 0; i < list.length; i++) {
          if (list[i] == "") {
            continue;
          }
          list1.add(list[i]);
        }
        print(list1);
        print("way 2");
        break;
      }
    case (7):
      {
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
    case (8):
      {
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
    default:
      print("wrong input");
  }
}