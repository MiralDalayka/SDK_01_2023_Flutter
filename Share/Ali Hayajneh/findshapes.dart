import 'dart:io';
import'dart:math';
abstract class Shape{

  void calculateArea(){}
  void calculateCircumference(){}

}

class Circle extends Shape {

  double radius=0.0;

  Circle() {

  }

  void calculateArea() {
    try {
      print("ENTER THE RADIUS OF THE CIRCLE:");
      double radius = double.parse(stdin.readLineSync()!);
      this.radius = radius;
      print("THE AREA OF CIRCLE IS :${pow(radius, 2) * 3.14}");
    }
    catch(e){
      stdout.writeln(e.toString());
      print ("RETRY");

    }
    finally{

      selectClass();
    }
  }

  void calculateCircumference(){
    print("THE CIRCUMFERENCE OF CIRCLE IS :${radius * 3.14*2}");
  }
}


class Rectangle extends Shape {
  double length=0.0;
  double width=0.0;
  void calculateArea(){
    try {
      print("ENTER THE LENGTH OF THE RECTANGLE:");
      length = double.parse(stdin.readLineSync()!);

      print("ENTER THE WIDTH OF THE RECTANGLE:");
      width = double.parse(stdin.readLineSync()!);

      print("THE AREA OF RECTANGLE IS :${width * length}");
    }
    catch(e){

      stdout.writeln(e.toString());
      print ("RETRY");
    }
    finally{

         selectClass();
    }
  }
  void calculateCircumference(){
    print("THE CIRCUMFERENCE OF RECTANGLE IS :${(length+width)*2}");
  }
}





class Triangle extends Shape {
  double base=0.0;
  double height=0.0;
  double thirdside=0.0;
  void calculateArea(){
try {
  print("ENTER THE BASE OF THE TRIANGLE:");
  base = double.parse(stdin.readLineSync()!);
  print("ENTER THE HEIGHT OF THE TRIANGLE:");
  height = double.parse(stdin.readLineSync()!);
  print("ENTER THE THIRD SIDE OF THE TRIANGLE:");
  thirdside = double.parse(stdin.readLineSync()!);
  print("THE AREA OF TRIANGLE IS :${base * height ~/ 2}");
}
catch(e){

  stdout.writeln(e.toString());
  print ("RETRY");
}
finally{

  selectClass();
}

}

  void calculateCircumference(){
    print("THE CIRCUMFERENCE OF TRIANGLE IS :${height+base+thirdside}");

  }
}

class Cylinder extends Shape{
  double height=0.0;
  double radius=0.0;
  void calculateArea(){
    try {
      print("ENTER THE HEIGHT OF THE CYLINDER:");
      height = double.parse(stdin.readLineSync()!);

      print("ENTER THE RADIUS OF THE CYLINDER:");
      radius = double.parse(stdin.readLineSync()!);

      print("THE AREA OF CYLINDER IS :${2 * 3.14 * (radius + height)}");
    }
    catch(e){

      stdout.writeln(e.toString());
      print(("RETRY"));
    }
    finally{

      selectClass();
    }
  }
  void calculateCircumference(){
    print("THE CIRCUMFERENCE OF CYLINDER IS  UNDEFINED");
  }
}

class Cone extends Shape {
  double radius=0.0;
  double height=0.0;
  void calculateArea(){
    try {
      print("ENTER THE HEIGHT OF THE CYLINDER:");
      height = double.parse(stdin.readLineSync()!);
      print("ENTER THE RADIUS OF THE CYLINDER:");
      radius = double.parse(stdin.readLineSync()!);
      double hypotenus = sqrt(pow(radius, 2) * (pow(height, 2)));
      print(
          "THE AREA OF CYLINDER IS : ${radius * 3.14 * (hypotenus + radius)}");
    }
    catch(e){

      stdout.writeln(e.toString());
      print ("RETRY");

    }
    finally{

      selectClass();
    }
  }
  void calculateCircumference(){
    print("THE CIRCUMFERENCE OF CONE IS UNDEFINED");
  }
}

class Wrapper {

  void calculate(Shape shape){

      shape.calculateArea();
      shape.calculateCircumference();




  }

}






void main(){

  viewShapes();
  selectClass();


}

Map shapemap={1:"Circle",2:"Rectangle",3:"Triangle",4:"Cylinder",5:"Cone"};
  void viewShapes(){

    print("PLEASE SELECT THE SHAPE FROM LIST ACCORDING TO ID");
    print("ID      SHAPE");
    print("-------------");

    for(var item in shapemap.keys){
      print("${item}      ${shapemap[item]} ");

    }



  }
Wrapper wrap=Wrapper();
  void selectClass(){

   int? id;

       print("SELECT YOUR OPTIONS");
    do{
      id=int.tryParse(stdin.readLineSync()!);

      if(!shapemap.keys.contains(id)&& id !=-1){
        print ("this id is not existed");

      }




      else {
        switch (id) {
          case 1:
            wrap.calculate(Circle());
            print("SELECT YOUR OPTIONS");
            break;

          case 2:
            wrap.calculate(Rectangle());
            print("SELECT YOUR OPTIONS");
            break;

          case 3:
            wrap.calculate(Triangle());
            print("SELECT YOUR OPTIONS");
            break;

          case 4:
            wrap.calculate(Cylinder());
            print("SELECT YOUR OPTIONS");
            break;

          case 5:
            wrap.calculate(Cone());
            print("SELECT YOUR OPTIONS");
            break;


          default:
          /////
            break;
        }
      }
   }
   while(id!=-1);
    print("DO YOU WANT TO CONTINUE ?");
    String choice=stdin.readLineSync()!;

    if(choice.toLowerCase()=="yes"){
      selectClass();
    }


  }
