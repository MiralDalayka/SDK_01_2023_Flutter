void main() {
  print("________________________________________________");
  String s = "Welcome to SDK jordan"; //[Welcome, to,SDK,jordan]
  print(s);
  var words = s.split(' '); //list of words [Welcome, to,SDK,jordan]
  for (String w in words) {
    print(w);
  }
  print("________________________________________________");

  String joinString = words.join("*");
  print(joinString);
}
