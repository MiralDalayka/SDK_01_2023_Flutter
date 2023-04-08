enum Days { sunday, monday, tue, wed, thu, fri, sat }

void main() {
  print("Days.sunday.name--> ${Days.sunday.name}");
  print("Days.sunday.index--> ${Days.sunday.index}");
  print("Days.thu.index--> ${Days.thu.index}");
  print("Days.values--> ${Days.values}");


  var day = Days.monday;
  switch (day) {
    case Days.sunday:
      print("1");
      break;
    case Days.monday:
      print("2");
      break;
    case Days.tue:
      print("3");
      break;
    case Days.wed:
      print("4");
      break;
    case Days.thu:
      print("5");
      break;
    case Days.fri:
      print("6");
      break;
    case Days.sat:
      print("7");
      break;
  }
}
