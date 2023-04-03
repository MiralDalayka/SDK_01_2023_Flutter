
 import 'dart:ffi';
import 'dart:io';

import 'Menues.dart';



class Order {

  dynamic dishNumberList = [];
  List ?newList=[];

  Order(){

    copyMenu();
    //print(newList);

  }

  void  copyMenu(){
    for(var x in Menues.list!){

      newList?.add([x.dishNum,x.dishName,x.dishPrice]);
    }

  }


  void insertOrder(String welcomingMessage) {
    print(welcomingMessage);
    int? orderNumber;
    do{
        orderNumber=int.tryParse(stdin.readLineSync()!);
        dishNumberList.add(orderNumber);

        }while(orderNumber!=0);


  }

void  deleteOrder(String message){

  print(message);
  int? orderNumber;
  do{

      orderNumber = int.tryParse(stdin.readLineSync()!);


    for(var index=0;index<dishNumberList.length;index++){

      if(dishNumberList[index]==orderNumber){
        dishNumberList.remove(dishNumberList[index]);
        break;

      }

    }


  }while(orderNumber!=0);



}

    void printOrder(){
      double sum=0.00;
      print("NUM  ITEM     PRICE");
      print("---  ----     -----");
      for(var item in dishNumberList){

        for(var dishnumber in newList!) {
          if(item==dishnumber[0]){
            print("${dishnumber[0]}  ${dishnumber[1]}        ${dishnumber[2]}");
            sum+=dishnumber[2];
          }

      }
    }
      print("--------------------");
      print("TOTAL:${sum}");
}
}