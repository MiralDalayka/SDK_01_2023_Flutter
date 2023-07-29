var url = "https://th.bing.com/th/id/R.5893ab2a61536d2d5738943e54871126?rik=e7qQOcajFGGlJw&riu=http%3a%2f%2fs1.bwallpapers.com%2fwallpapers%2f2014%2f05%2f09%2fblue-color_034147333.jpg&ehk=xtoZB7Whb5n3El5NlZPbHDH%2bpjeydbLfsglY7J7YT8I%3d&risl=&pid=ImgRaw&r=0";
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
      itemImage: url),


      ItemModel(
      catId: 1,
      itemId: 12,
      itemPrice: 20,
      itemName: "Mouse",
      itemMark: "Hp",
      itemImage: url),


      ItemModel(
      catId: 1,
      itemId: 13,
      itemPrice: 240,
      itemName: "Monitor",
      itemMark: "Dell",
      itemImage: url),


      ItemModel(
      catId: 2,
      itemId: 21,
      itemPrice: 1,
      itemName: "Onion",
      itemMark: "Chiquita",
      itemImage:url),
      ItemModel(
      catId: 2,
      itemId: 22,
      itemPrice: 1,
      itemName: "Banana",
      itemMark: "Chiquita",
      itemImage:url),

      ItemModel(
      catId: 2,
      itemId: 23,
      itemPrice: 0.50,
      itemName: "Orange",
      itemMark: "King",
      itemImage: url),

      ItemModel(
      catId: 2,
      itemId: 24,
      itemPrice: 1.50,
      itemName: "Grapes",
      itemMark: "Ajloun",
      itemImage:url),


      ItemModel(
      catId: 3,
      itemId: 31,
      itemPrice: 1.70,
      itemName: "Milk",
      itemMark: "Nido",
      itemImage: url),

      ItemModel(
      catId: 3,
      itemId: 32,
      itemPrice: 0.60,
      itemName: "Cheese",
      itemMark: "Kiri",
      itemImage:url),


      ItemModel(
      catId: 3,
      itemId: 33,
      itemPrice: 1,
      itemName: "Butter",
      itemMark: "Lurpak",
      itemImage: url),

      ItemModel(
      catId: 4,
      itemId: 41,
      itemPrice: 3,
      itemName: "Mug",
      itemMark: "Mugger",
      itemImage: url),
      ItemModel(
      catId: 4,
      itemId: 42,
      itemPrice: 5,
      itemName: "Spoon",
      itemMark: "Crystal",
      itemImage: url),

      ItemModel(
      catId: 4,
      itemId: 43,
      itemPrice: 5,
      itemName: "Fork",
      itemMark: "Arcroc",
      itemImage: url)
];
