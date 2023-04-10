import 'Customer.dart';
import 'dart:io';

import 'Product.dart';
import 'admin.dart';
import 'static_data.dart';
import 'static_products.dart';

var n = 0;
var guest = true;
var admin = true;

class SystemClass {
  runUserMode() {
    Customer customer = createAccount();
    viewMenuCustomer();
    while (n == 0) {
      pickChoiceCustomer(customer);
    }
    if (n == 1) {
      //pay
    } else {
      print("Good Bey");
    }
  }

  runGuestMode() {
    viewMenuGuest();
    while (guest) {
      pickChoiceGuest();
    }
  }

  runAdminMode(String name, String id) {
    if (name == adminStaticObject.name && id == adminStaticObject.id) {
      viewMenuAdmin();
      while (admin) {
        pickChoiceAdmin(Admin(id, name));
      }
    } else {
      print("Wrong input- no access");
    }
  }

  //-------
  Customer createAccount() {
    print("Welcome :");
    stdout.write("Enter your name:");
    String name = stdin.readLineSync();
    stdout.write("Enter your address:");
    String address = stdin.readLineSync();
    stdout.write("Enter your phone number:");
    String phno = stdin.readLineSync();
    stdout.write("Enter your card Type:");
    String ct = stdin.readLineSync();
    stdout.write("Enter your card number:");
    String cn = stdin.readLineSync();
    stdout.write("Enter your card Password:");
    String cp = stdin.readLineSync();
    return Customer(
        name: name, address: address, PhNo: phno, cn: cn, ct: ct, cp: cp);
  }

  viewMenuCustomer() {
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

  pickChoiceCustomer(Customer customer) {
    stdout.write("Pick a choice :");
    int choice = num.parse(stdin.readLineSync());
    switch (choice) {
      case 1:
        viewMenuCustomer();
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
        n = 1;
        customer.paymentFunction();
//pay y -> pay
        break;
      case 6:
        n = 2;
      //exist
    }
  }

  //-------

  viewMenuGuest() {
    List<String> choices = [
      "View Menu",
      "View Products",
      "Create an account",
      "Exist",
    ];

    for (int i = 0; i < choices.length; i++) {
      print("${i + 1}- ${choices.elementAt(i)}");
    }
  }

  pickChoiceGuest() {
    stdout.write("Pick a choice :");
    int choice = num.parse(stdin.readLineSync());
    switch (choice) {
      case 1:
        viewMenuGuest();
        print("____________________");
        break;
      case 2:
        viewProducts();
        print("____________________");

        break;
      case 3:
        guest = false;
        runUserMode();
        break;
    }
  }

  //-----
  viewMenuAdmin() {
    List<String> choices = [
      "View Menu",
      "View Products",
      "Add Products",
      "Delete Products",
      "Modify Products",
      "Exist",
    ];

    for (int i = 0; i < choices.length; i++) {
      print("${i + 1}- ${choices.elementAt(i)}");
    }
  }

  pickChoiceAdmin(Admin adminObject) {
    stdout.write("Pick a choice :");
    int choice = num.parse(stdin.readLineSync());
    switch (choice) {
      case 1:
        viewMenuAdmin();
        print("____________________");
        break;
      case 2:
        viewProducts();
        print("____________________");

        break;
      case 3:
        stdout.write("Enter Product name:");
        var name = stdin.readLineSync();
        stdout.write("Enter Product Price");
        double price = num.parse(stdin.readLineSync()).toDouble();
        Product product = Product(n: name, p: price);
        adminObject.addProduct(product);
        break;
      case 4:
        stdout.write("Enter Product id:");
        String id = stdin.readLineSync();
        print(adminObject.deleteProduct(id));
        break;
      case 5:
        stdout.write("Enter Product name:");
        var oldName = stdin.readLineSync();
        stdout.write("Enter Product name:");
        var newName = stdin.readLineSync();
        print("Do you want to Change product price?");
        var choice = stdin.readLineSync();
        if (choice.toLowerCase() == "yes") {
          stdout.write("Enter New Price:");
          var price = num.parse(stdin.readLineSync()).toDouble();
          adminObject.modifyProduct(oldName, newName, price);
        } else {
          adminObject.modifyProduct(oldName, newName);
        }
        break;
      case 6:
        admin = false;
    }
  }
}
