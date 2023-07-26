class ItemModel {
  final int catId;
  final int itemId;
  final double itemPrice;
  final String itemName;
  final String itemMark;
  final String itemImage;

  ItemModel(
      {required this.catId,
      required this.itemId,
      required this.itemPrice,
      required this.itemName,
      required this.itemMark,
      required this.itemImage});
}

List<ItemModel> itemModelList = [
  ItemModel(
      catId: 1,
      itemId: 11,
      itemPrice: 200,
      itemName: "Computer",
      itemMark: "Aesus",
      itemImage: "assets/images/temp/computer.jpeg"),


      ItemModel(
      catId: 1,
      itemId: 12,
      itemPrice: 20,
      itemName: "Mouse",
      itemMark: "Hp",
      itemImage: "assets/images/temp/mouse.jpeg"),


      ItemModel(
      catId: 1,
      itemId: 13,
      itemPrice: 240,
      itemName: "Monitor",
      itemMark: "Dell",
      itemImage: "assets/images/temp/monitor.jpeg"),


      ItemModel(
      catId: 2,
      itemId: 21,
      itemPrice: 1,
      itemName: "Onion",
      itemMark: "Chiquita",
      itemImage: "assets/images/temp/onion.jpeg"),
      ItemModel(
      catId: 2,
      itemId: 22,
      itemPrice: 1,
      itemName: "Banana",
      itemMark: "Chiquita",
      itemImage: "assets/images/temp/banana.jpeg"),

      ItemModel(
      catId: 2,
      itemId: 23,
      itemPrice: 0.50,
      itemName: "Orange",
      itemMark: "King",
      itemImage: "assets/images/temp/orange.jpeg"),

      ItemModel(
      catId: 2,
      itemId: 24,
      itemPrice: 1.50,
      itemName: "Grapes",
      itemMark: "Ajloun",
      itemImage: "assets/images/temp/grapes.jpeg"),


      ItemModel(
      catId: 3,
      itemId: 31,
      itemPrice: 1.70,
      itemName: "Milk",
      itemMark: "Nido",
      itemImage: "assets/images/temp/milk.jpeg"),

      ItemModel(
      catId: 3,
      itemId: 32,
      itemPrice: 0.60,
      itemName: "Cheese",
      itemMark: "Kiri",
      itemImage: "assets/images/temp/kiri.jpeg"),


      ItemModel(
      catId: 3,
      itemId: 33,
      itemPrice: 1,
      itemName: "Butter",
      itemMark: "Lurpak",
      itemImage: "assets/images/temp/butter.jpeg"),

      ItemModel(
      catId: 4,
      itemId: 41,
      itemPrice: 3,
      itemName: "Mug",
      itemMark: "Mugger",
      itemImage: "assets/images/temp/mug.jpeg"),
      ItemModel(
      catId: 4,
      itemId: 42,
      itemPrice: 5,
      itemName: "Spoon",
      itemMark: "Crystal",
      itemImage: "assets/images/temp/spoon.jpeg"),

      ItemModel(
      catId: 4,
      itemId: 43,
      itemPrice: 5,
      itemName: "Fork",
      itemMark: "Arcroc",
      itemImage: "assets/images/temp/fork.jpeg")
];
