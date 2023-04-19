class MakePayment {
  int _id;
  double _amount;
  int _transactionId;
  int _userId;

  MakePayment(){

     _id;
     _amount=0.0;
     _transactionId=0;
     _userId=0;



   }

   set amount(double amount) {
    _amount = amount;
   }
   set transactionId(int transactionId) {
    _transactionId = transactionId;
   }

   set userId(int userId) {
     _userId = userId;
   }

   double get amount => _amount;
   int get transactionId => _transactionId;
   int get userId => _userId;






  void confirmTransaction() {

  }

  void returnMoneyOnCancellation() {
  }
}