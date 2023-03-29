import 'Customer.dart';

void main() {
  Customer customer =
      Customer(name: "Ali", address: "Amman", PhNo: "0123456789");

  customer.viewSystemProducts();
  print(customer.cart.productList.length);

  customer.addToCart(4);
  customer.addToCart(4);
  customer.addToCart(4);

  // if(customer.cart.productList.isNotEmpty) {
  //   customer.viewCartProducts();
  // }
  print(customer.cart.productList.length);
  customer.viewCartProducts();

  customer.removeFromCart(4);
  print(customer.cart.productList.length);
  customer.viewCartProducts();
}
