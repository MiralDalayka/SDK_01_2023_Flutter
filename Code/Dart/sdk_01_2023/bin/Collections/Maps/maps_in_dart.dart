void main(){
//LIST marks = [45,56,55,88] --> marks[index] -- marks[2]=5  == index - value
//maps  key - value  studentsID = ['stu1' -> 1100 , 'stu2' -> 2233,'assdd'=556] key - > String
// studentsID['stu2']  == >  2233

//declaration
  var studentsID = new Map();
  studentsID['s1'] = 4545;
  studentsID['st2'] = 9898;

// map : studentsID [ 's1' => 4545 , 'st2' => 9898]

  print(studentsID);

//var mapName = {'k1':v1 ,'k2':v2 };
  var studentMarks = {'ali':59 , 'sara':65 , 'ahmad':74};
  print(studentMarks);

//prop
  print("studentMarks.keys -> ${studentMarks.keys}");
  print("studentMarks.values -> ${studentMarks.values}");
  print("studentMarks.length -> ${studentMarks.length}");
  print("studentMarks.isEmpty -> ${studentMarks.isEmpty}");
  print("studentMarks.isNotEmpty -> ${studentMarks.isNotEmpty}");

  print("_____________________________________________");
  print("Add all function:");
  studentMarks.addAll({'laila':111,'manar':222});
  print(studentMarks);
  print("_____________________________________________");
  print('Remove function : ');
  studentMarks.remove('sara');
  print(studentMarks);
  print("_____________________________________________");
  print("Clear function");
  print("Length before ${studentMarks.length}");

  studentMarks.clear();
  print("Length after ${studentMarks.length}");





}
