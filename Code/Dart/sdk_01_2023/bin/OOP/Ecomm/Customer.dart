import 'dart:io';

import 'Cart.dart';
import 'Payment.dart';
import 'control.dart';
import 'static_products.dart';

var id = 0;

class Customer {
  String _name, _address, _PhNo;
  int _id;
  Cart cart;
  Payment payment;

  Customer({String name, String address, String PhNo, String ct, String cn,String cp}) {
    _id = id++;
    cart = Cart();
    _name = name;
    _address = address;
    _PhNo = PhNo;
    payment = Payment(ct,cn,cp);
  }

  String get name => _name;

  viewCartProducts() {
    //user pick - add cart
    int size = cart.numOfProducts; //==cart.productList.length
    print("Product Name:      Price");

    for (int i = 0; i < size; i++) {
      print(
          "${cart.productList.elementAt(i).name}                  ${cart.productList.elementAt(i).price}");
      //cart.productList.elementAt(i) = Product object
    }
  }

  viewSystemProducts() {
    //menu
    viewProducts();
  }

  addToCart(int choice) {
    int index = staticProducts.indexWhere((element) => choice == element.id); //
    if (index == -1) {
      print("Item Not Found");
      //ask again
    } else {
      cart.productList.add(staticProducts.elementAt(index));
      cart.numOfProducts += 1;
      cart.total += (staticProducts.elementAt(index).price);
    }
  }

  removeFromCart(int choice) {
    int index = cart.productList.indexWhere((element) => choice == element.id);
    if (index == -1) {
      print("Item Not Found");
    } else {
      cart.productList.removeAt(index);
      cart.numOfProducts -= 1;
      cart.total -= (cart.productList.elementAt(index).price);
    }
  }

  paymentFunction() {
    print("------------------------------------");
    print("You products are:");
    viewCartProducts();
    print("------------------------------------");
    print("Total: ${cart.total}");
    stdout.write("Do You Want To Complete Payment Process?");
    var choice = stdin.readLineSync();
    if (choice.toLowerCase() == "yes") {
      stdout.write("Enter Card Number");
      var cn = stdin.readLineSync();
      stdout.write("Enter Card Password");
      var cp = stdin.readLineSync();
      int result = payment.cardValidation(cn: cn, cp: cp);
      if(result==0){
        print("Wrong Card Password Try Again");
      }else if(result==2)
        {
          print("Wrong Card Number Try Again");

        }
      else{
        print("Thank You");
      }
    }else
      {
        n=0;
      }
  }

  get address => _address;

  get PhNo => _PhNo;
}
