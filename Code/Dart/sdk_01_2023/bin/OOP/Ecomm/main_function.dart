import 'dart:developer';

import 'Customer.dart';
import 'dart:io';

Customer createAccount() {
  print("Welcome :");
  stdout.write("Enter your name:");
  String name = stdin.readLineSync();
  stdout.write("Enter your address:");
  String address = stdin.readLineSync();
  stdout.write("Enter your phone number:");
  String phno = stdin.readLineSync();
  return Customer(name: name, address: address, PhNo: phno);
}

viewMenu() {
  List<String> choices = [
    "View Menu",
    "View Products",
    "Add Products",
    "Delete Products",
    "Pay",
    "Exist",
  ];

  for (int i = 0; i < choices.length; i++) {
    print("${i + 1}- ${choices.elementAt(i)}");
  }
}

pickChoice(Customer customer) {
  stdout.write("Pick a choice :");
  int choice = num.parse(stdin.readLineSync());
  switch (choice) {
    case 1:
      viewMenu();
      print("____________________");
      break;
    case 2:
      if (customer == null) {
        print("You don't have an account yet, create one!");
      } else {
        customer.viewSystemProducts();
      }
      print("____________________");

      break;
    case 3:
      //here
      int item;
      do {
        print("Enter -1 to Stop");
        stdout.write("Pick an item: ");
        item = num.parse(stdin.readLineSync());
        if (item != -1) {
          customer.addToCart(item);
        }
      } while (item != -1);
      print("____________________");

      break;
    //while
    // while (true) {
    //   print("Enter -1 to Stop");
    //   stdout.write("Pick an item: ");
    //   item = num.parse(stdin.readLineSync());
    //   if (item == -1) {
    //     break;
    //   }
    //   customer.addToCart(choice);
    // }
    case 4:
      int item;
      do {
        if (customer.cart.productList.isEmpty) {
          print("Your Cart is Empty");
          break;
        }
        print("Enter -1 to Stop:");
        stdout.write("What item you want to remove:");
        item = num.parse(stdin.readLineSync());

        if (item != -1) {
          customer.removeFromCart(item);
        }
      } while (item != -1);
      print("____________________");

      break;
    case 5:
      customer.payment();
//pay y -> pay
      break;
    //exist
  }
}

runUserMode() {
  print("Welcome, First You need to create an account:");
  String c = stdin.readLineSync();
  if (c.toLowerCase() == "yes") {
    Customer customer = createAccount();
    viewMenu();
    while (true) {
      pickChoice(customer);
    }
  } else
    print("Guest Mood");
}

void main() {
  runUserMode();
}
