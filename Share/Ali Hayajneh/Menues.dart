 enum Categories{

  SEAFOOD, CHICKEN,BEEF,BEVERAGE

}
  class Menues{
  Categories? _menuCat;
   int ?_dishNum;
   String ? _dishName;
   double ?_dishPrice;
   static List<Menues>?list=[];

  Menues.c(){

  }

   Menues(Categories ?_menuCat, int ?_dishNum,String ? _dishName,double ?_dishPrice){
         this._menuCat=_menuCat!;
         this._dishNum=_dishNum;
         this._dishName=_dishName;
         this._dishPrice=_dishPrice;

   }
      List<Menues>storeDishes(Menues menues){
     list?.add(menues);
     return list!;
     }

     void printMenue(Categories menucat){

            print("    #######${menucat.name}#######");
      for(var item in list!){


          if (item._menuCat == menucat) {
            print("      ${item._dishNum}.---${item._dishName}---${item._dishPrice}");

          }


      }

            print("____________________________________");
     }

       int ?get dishNum=> _dishNum;
       String ?get dishName =>_dishName;
       double ?get dishPrice=>_dishPrice;



  }
