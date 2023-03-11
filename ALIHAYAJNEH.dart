

//concatenate two lists in the following order



void main (){

      var list1=["Hello","take"];
      var list2=["Dear","Sir"];
      var list3=[];

      for(int index1=0;index1<list1.length;index1++){
        for(int index2=0;index2<list2.length;index2++) {
          list3.add(list1[index1]+" "+list2[index2]);


        }


      }

      print(list3);
 }