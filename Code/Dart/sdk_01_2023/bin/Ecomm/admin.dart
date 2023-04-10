import 'Product.dart';
import 'main_function.dart';
import 'static_products.dart';

class Admin {
  String _id, _name;

  Admin(this._id, this._name);

  get name => _name;

  String get id => _id;

  void adminViewProducts() {
    viewProducts();
  }

  void addProduct(Product p) {
    staticProducts.add(p);
  }

  String deleteProduct(String id) {
    //name - delete
    int index = staticProducts.indexWhere((element) => element.id.toString() == id);
    if (index != -1) {
      staticProducts.removeAt(index);
      return "Item Deleted";
    } else {
      return "Item not Found";
    }
  }

  int modifyProduct(String oldName, String newName, [double price = 0]) {
    // staticProducts.contains(Product(n: oldName));
    int index = staticProducts.indexWhere((element) {
      element.name == newName;
    });
    if (index == -1) {
      int i = staticProducts.indexWhere((element) {
        element.name == oldName;
      });
      staticProducts.elementAt(i).name = newName;
      if (price == 0) {
        price = staticProducts.elementAt(i).price;
      }
      staticProducts.elementAt(i).price = price;
    }
  }
}
