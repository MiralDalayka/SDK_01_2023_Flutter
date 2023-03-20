import 'dart:io';

void main() {
  // list [2,2,1,5,6]
// set [2,1,5,6]

  Set<String> names = {"ali", "sara"};
  var marks = <int>{
    54,
    56,
    56,
    51,
    11,
    11,
    11,
    11,
    25
  }; //--{54, 56, 51, 11, 25}
  print(marks);

  print("marks.length -> ${marks.length}");
  print("marks.elementAt(2) -> ${marks.elementAt(2)}"); //2 index

  print("marks.contains -> ${marks.contains(110)}");
  print("marks.remove -> ${marks.remove(11)}");

  print("After remove(11) function $marks");
  print('******************************************************');

  stdout.write("using for each to print: ");
  marks.forEach((element) {
    stdout.write("$element  ");
  });
  print('');
  print('******************************************************');
  print("length before clear ${marks.length}");
  marks.clear();
  print("length after clear ${marks.length}");


}