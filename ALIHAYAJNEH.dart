

// remove empty string from a list



void main (){

  var list1=["Mike","","Emma","Kelly","","Brad",""];
      // list1.removeWhere((element) => element=="");

      // print(list1);

      // or

          while(list1.contains("")){
            list1.remove("");
          }

          print(list1);



 }