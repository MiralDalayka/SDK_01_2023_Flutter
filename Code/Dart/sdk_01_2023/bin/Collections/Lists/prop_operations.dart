import 'dart:io';
import 'dart:math';

void main() {
  var marks = [];
  marks.addAll([15, 16, 48, 78, 7]);

  print("------- pro");
  print("marks.first --> ${marks.first}");
  print("marks.last --> ${marks.last}");
  print("marks.isEmpty --> ${marks.isEmpty}"); // false -> length>0
  print("marks.isNotEmpty --> ${marks.isNotEmpty}"); // true -> length>0
  print("marks.reversed --> ${marks.reversed}"); // [1,2,3] --> [3,2,1]

//operations
  print("Before remove last");
  print(marks);

  print("After remove last");

  marks.removeLast();
  print(marks);

  print("After remove At 1 ");

  marks.removeAt(1);
  print(marks);

  print("After remove(48) ");

  marks.remove(48);
  print(marks);

  print("________________________________________________");

  marks.addAll([
    15,
    15,
    15,
  ]);

  marks.replaceRange(0, 1, [1555, 1555]);
  print(marks);
}
