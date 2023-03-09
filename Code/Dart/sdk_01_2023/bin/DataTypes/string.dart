void main() {
  //initialising string variable notes:
  String name = ""; //name != name=""  -- null != empty
//you can define String variable using these methods
  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''
this is a multiline line string
this is a multiline line string
this is a multiline line string
this is a multiline line string
this is a multiline line string
''';
  String str4 = """
this is a multiline line string
this is a multiline line string
this is a multiline line string
this is a multiline line string
this is a multiline line string
""";
//the output will be the same
  print(str1);
  print(str2);
  print(str3);
  print(str4);

  print("________________________________________________");

//now we will study some functions and proprieties we use with string
  //1. Checking empty strings :
  if (name.isEmpty) //T-> string empty-- F -> string full
  {
    print("the string is empty");
  } else {
    print("The string is full");
  }

  name = "Sara";
  if (name.isNotEmpty) //t-> string full -- F string empty
  {
    print("the string is full");
  } else {
    print("The string is empty");
  }
  print("________________________________________________");


  print(
      "name.length -> ${name.length}"); //this property return number of char in the string (Space is counted)
  print("________________________________________________");

  //these functions return NEW strings means if we print name after using them it will still the same
  print("Before : $name");

  print(name.toLowerCase());
  print(name.toUpperCase());
  print("After : $name");
  print("________________________________________________");

//trim function removes all spaces from left and right sides or both and return NEW string
  String name1 = "       Ali         ";
  print("Before -> $name1*");
  print("Using Trim -> ${name1.trim()}*");
  print("After -> $name1*");

  print("________________________________________________");

//compare 2 strings based on the letters ascii code numbers
//return 1 if s1 > s2 -- return 0 if both the same -- return -1 is s1 < s2
//note G > A
  String s1 = "Zoo", s2 = "Zoo";
  print(s1.compareTo(s2)); //Z.compareTo(Z)
  s1 = "Apple";
  s2 = "Zoo";
  print(s1.compareTo(s2)); //A.compareTo(Z)
  s1 = "Zoo";
  s2 = "Apple";
  print(s1.compareTo(s2)); //Z.compareTo(A)

  print("________________________________________________");

//this function cut the string into smaller string and return NEW string
  String w = "Welcome To SDK jordan ";
  print(w.substring(5)); //start cutting from index 5

  print("________________________________________________");


  //  to replace all (spaces) to (stars) .
  var arctic2 =
      'Using str1.compareTo(str2) method: the method returns a negative value (-1) if str1 is ordered before str2, a positive value (1) if str1 is ordered after str2, or zero if str1 and str2 are equivalent. This method is useful if you want to sort a collection of strings.';
  print(arctic2.replaceAll(' ', '*'));
}
