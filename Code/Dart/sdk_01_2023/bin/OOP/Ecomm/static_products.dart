import 'Product.dart';

List<Product> staticProducts = [
  Product(n: "A", p: 1.2),
  Product(n: "B", p: 5.6),
  Product(n: "C", p: 6.5),
  Product(n: "D", p: 1.2),
  Product(n: "E", p: 1.2),
];

viewProducts() {
  print("Product Name:          Price");

  for (int i = 0; i < staticProducts.length; i++) {
    print(
        "${staticProducts.elementAt(i).id} ${staticProducts.elementAt(i).name}                       ${staticProducts.elementAt(i).price}");
  }
}
