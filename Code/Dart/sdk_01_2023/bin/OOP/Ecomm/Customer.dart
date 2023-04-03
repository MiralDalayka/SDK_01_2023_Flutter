import 'Cart.dart';
import 'static_products.dart';

var id = 0;

class Customer {
  String _name, _address, _PhNo;
  int _id;
  Cart cart;

  Customer({String name, String address, String PhNo}) {
    _id = id++;
    cart = Cart();
    _name = name;
    _address = address;
    _PhNo = PhNo;
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

  payment(){
    print("------------------------------------");
    print("You products are:");
    viewCartProducts();
    print("------------------------------------");
    print("Total: ${cart.total}");

  }

  get address => _address;

  get PhNo => _PhNo;
}
