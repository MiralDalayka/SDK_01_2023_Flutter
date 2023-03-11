


 void main (){

    var a=[1,4,9,16,25,36,49,81,100];
    var evenList=[];

    for(var item in a){

      if(item.isEven==true){
        evenList.add(item);
      }

    }

    print(evenList);


 }