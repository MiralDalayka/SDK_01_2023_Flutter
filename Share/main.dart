import 'dart:io';
abstract class Shape{

  void calculateAreaCircumference(){}


}

class Circle extends Shape{
  void calculateAreaCircumference(){
    print("CIRCLE ");
  }

}

class Rectangle extends Shape {
  void calculateAreaCircumference(){
    print("RECTANGLE  ");
  }
}

class Triangle extends Shape {
  void calculateAreaCircumference(){
    print("TRIANGLE ");
  }
}

class Cylinder extends Shape{
  void calculateAreaCircumference(){
    print("CYLINDER  ");
  }
}

class Cone extends Shape {
  void calculateAreaCircumference(){
    print("CONE ");
  }
}

class Wrapper {

  void calculate(Shape shape){

    shape.calculateAreaCircumference();
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


    do{
      id=int.tryParse(stdin.readLineSync()!);
      if(!shapemap.keys.contains(id)){
        print ("this id is not existed");
      }
      else {
        switch (id) {
          case 1:
            wrap.calculate(Circle());
            break;

          case 2:
            wrap.calculate(Rectangle());
            break;

          case 3:
            wrap.calculate(Triangle());
            break;

          case 4:
            wrap.calculate(Cylinder());
            break;

          case 5:
            wrap.calculate(Cone());
            break;
          default:
          /////
            break;
        }
      }
   }
   while(id!=-1);

  }