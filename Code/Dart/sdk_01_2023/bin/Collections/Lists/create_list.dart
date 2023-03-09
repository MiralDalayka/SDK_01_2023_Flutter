void main() {
  //instead of creating all these variables as student Marks we use list
  int m = 23, m1 = 34, m2 = 15, m3 = 40;

  print(m);
  print(m1);
  print(m2);
  print(m3);

//   var marks = List(4); // using this way to define a list will give you error
  //The default 'List' constructor isn't available when null safety is enabled.
  var marks = [];
  // marks[0] = 23; //ERROR
//to add items use :

  marks = [15,40,45]; //[23,34,15, ]
print("Marks are:");
print(marks); // print + list name will print all items
}
