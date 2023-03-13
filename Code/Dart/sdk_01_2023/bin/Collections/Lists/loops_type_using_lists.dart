void main() {
  var marks = [51, 56, 48, 51, 2, 3];
  //for in - for each
//[1,1,5] 1 1 5
  print("forIn");

  for (int m in marks) //
  {
    print(m);
  }
  print("________________________________________________");
  print("forEach");
  marks.forEach((m) {
    print(m);
  });


}
