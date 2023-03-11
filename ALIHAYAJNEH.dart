

//Concatenate tow lists index-wise


void main (){

  var list1=["M","na","i","Ke"];
  var list2=["y","me","s","lly"];
  var ConcatenatedList=[];

  for(var index=0;index<list1.length;index++){

    ConcatenatedList.add(list1[index]+list2[index]);
  }

     print(ConcatenatedList);
 }