// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartModel {
  final int itemId;
  int quantity;
  double itemTotalPrice;
  CartModel({
    required this.itemId,
    required this.quantity,
    required this.itemTotalPrice,
  });
}

List<CartModel> cartModelList = [];
