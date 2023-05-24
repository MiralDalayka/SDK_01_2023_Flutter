// THE OCCURENCE OF CAPITALS IN STRING

void main(){

  String word="NNNNNNNN8888CZZZZZZ";
  Map frequency={};

  for(var x=0;x<word.length;x++){

    if(word[x].codeUnits[0]>=65 && word[x].codeUnits[0]<=90){
      if(!frequency.keys.contains(word[x])){

        frequency[word[x]]=1;
      }
      else{
        frequency[word[x]]=frequency[word[x]]+1;

      }
    }

  }
     print("CAPITAL LETTER----------OCCURENCE");
     for(var item in frequency.keys){

       print("        $item-------------------${frequency[item]}");
     }

}
