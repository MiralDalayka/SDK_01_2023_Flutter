void main(){
  var students = new Map();
  //we can add multiple values to the same key
  //ali = > name - age - gpa - gender

  students['stu1']='ali ''20 ''3.6 ''male ';
  students['stu2']='sara ''22 ''3.8 ''female' ;
  students['stu3']='ahmad ''25 ''2.8 ''male' ;

  //we can use any data type as key
  students[1]='rami ''25 ''2.6 ''male';
  // no repeating keys - 2 same keys
  students[1]='****** ''******* ''****** ''******';

  print(students);

  //HW ;
  // map  of cars


}