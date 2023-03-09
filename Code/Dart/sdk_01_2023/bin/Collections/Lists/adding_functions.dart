void main() {
//  Growable list [1,2,3] length =3 --> [1,2,3,4] length =4
//method 1
  var marks = [15, 12, 16, 78];
  print("Length before adding ${marks.length} ");
  print(marks);

  print("_____ Add function");
  marks.add(1111111);
  print("Length after adding ${marks.length} ");

  print(marks);

  print("_____ Add All function");

  marks.addAll([555555, 6666666]);
  //marks.addAll(555555);//ERROR
  print(marks);
  print("________________________");
  print("_____ Insert function at index 2");
  marks.insert(2, 6565656);
  print("Length after adding ${marks.length} ");

  print(marks);

  print("_____ Insert All function at index 2");

  marks.insertAll(2, [1010101, 202020]);
  print(marks);

  print("________________________");
  print("Properties you can use with list");
      var marks2 = [];
      marks2.add(2);
  print("marks.single --> ${marks2.single}");//this will give error if the list have more then 1 item

  print("marks.isEmpty --> ${marks2.isEmpty}"); // true -> length=0
  print("marks.isNotEmpty --> ${marks2.isNotEmpty}"); // false -> length=0


}
