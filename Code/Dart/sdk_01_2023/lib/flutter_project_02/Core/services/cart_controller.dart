import '../models/cart_model.dart';
import '../models/items_model.dart';

class CartController {
  void addToCart(int itemId, {int quantity = 1}) {
    int checkIndex =
        cartModelList.indexWhere((element) => element.itemId == itemId);

    if (checkIndex == -1) {
      int index =
          itemModelList.indexWhere((element) => element.itemId == itemId);
      double itemPrice = itemModelList[index].itemPrice;
      cartModelList.add(CartModel(
          itemId: itemId,
          quantity: quantity,
          itemTotalPrice: itemPrice * quantity));
    }
  }
    void increaseQuantity(int itemId) {
      int checkIndex =
          cartModelList.indexWhere((element) => element.itemId == itemId);

      cartModelList[checkIndex].quantity += 1;
      int index =
          itemModelList.indexWhere((element) => element.itemId == itemId);
      double itemPrice = itemModelList[index].itemPrice;
      cartModelList[checkIndex].itemTotalPrice =
          cartModelList[checkIndex].quantity * itemPrice;
    }

    void decreaseQuantity(int itemId) {
      int checkIndex =
          cartModelList.indexWhere((element) => element.itemId == itemId);

      cartModelList[checkIndex].quantity -= 1;
      int index =
          itemModelList.indexWhere((element) => element.itemId == itemId);
      double itemPrice = itemModelList[index].itemPrice;
      cartModelList[checkIndex].itemTotalPrice =
          cartModelList[checkIndex].quantity * itemPrice;
    }

    void removeFromCart(int itemId) {
      cartModelList.removeWhere((element) => element.itemId == itemId);
    }

    double sumTotal() {
      double sum = 0.0;

      for (var item in cartModelList) {
        sum += item.itemTotalPrice;
      }

      return sum;
    }
  }

