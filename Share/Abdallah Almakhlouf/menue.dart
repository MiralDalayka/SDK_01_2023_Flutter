import 'dart:io';
void main (){
  menue();
send();

}
void menue() {
  print('-------------------------Sandwiches--------------------------');
  print('1-HotDog                                          7 \$');
  print('2-Chickin sandwich                                9 \$');
  print('3-Vegetabele sandwich                             8 \$');
  print('4-fresh tuna sandwich                            10 \$');
  print('5-mazorola cheese sandwich                        8 \$');
  print('-------------------------BURGER SANDWICH--------------------------');
  print('6-CHEESE BURGER                             9 \$');
  print('7-BEEF BURGER                               9 \$');
  print('8-CHICEN BURGUER                            9 \$');
  print('9-VEGETABLE BURGER                          8 \$');
  print('10-FISH BURGURE                             10 \$');
  print('                    all served with franch fries and fresh salad');
}
send(){
  var sandwich={1:7,2:9,3:8,4:10,5:8,6:9,7:9,8:9,9:8,10:10};
  var end;
  var total=0;
  var i;
var x;
do{
  print('pleas enter your order number');
   x=num.parse(stdin.readLineSync());
  print('pleas enter 0 if you finished else enter any number');
  end = num.parse(stdin.readLineSync());
  for( i=1;i<sandwich.length;i++){
    if(i==x){
      total+=sandwich[i];

    }

  }




}while(end!=0);
  print('if Do you have a modification enter number 1 else enter any number');
  var y=num.parse(stdin.readLineSync());
  if(y==1){
    print('plaes enter removed number');
    var r=num.parse(stdin.readLineSync());
    if(r==x){
  for( i=1;i<sandwich.length;i++){

    if(i==r){
      total-=sandwich[i];

    }

  }}
else{
  print('The removed number must be one of the entered order numbers ');
    }
  }

  print('The total invoice value is =$total\$ ');
}
