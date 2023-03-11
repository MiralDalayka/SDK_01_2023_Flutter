

//Turn every number into square

import 'dart:io';

void main (){

   var numbers=[1,2,3,4,5,6,7];

   for(int index=0;index<numbers.length;index++ ){

       numbers[index]*=numbers[index];

   }

   print(numbers);
 }