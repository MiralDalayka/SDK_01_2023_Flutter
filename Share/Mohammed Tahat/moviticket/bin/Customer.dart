
import 'dart:io';


import 'Movie.dart';
class Customer {
  int _id;
  String _name;
  String _number;
  String _address;
  Movie movie=Movie();

  Customer( this._name, this._number, this._address);





  set name(String name) {
    _name = name;
  }
  set number(String number) {
    _number = number;
  }

  set address(String address) {
    _address = address;
  }


  String get name => _name;
  String get number => _number;
  String get address => _address;



  void signUp() {
    pragma("signup");
  }

  void login() {
    print('Enter your name');
     String name=stdin.readLineSync();
     print('$name');


  }

  void logout() {

    print('Enter your logout 0');
    int x= num.parse(stdin.readLineSync());

    if(x==0){
      print('logout');
    }
    else{
      print('no');

    }
  }

  void searchForMovie() {
    print(movie);

  }

  void bookTicket() {
  }

  void makePayment() {
  }

  void cancelTicket() {
  }
}