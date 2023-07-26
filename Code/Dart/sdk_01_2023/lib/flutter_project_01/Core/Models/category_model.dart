class CategoryModel {
  final int catId;
  final String catName;
  final String catImage;

  CategoryModel(
      {required this.catId, required this.catName, required this.catImage});
}

List<CategoryModel> categoryModelList = [
  CategoryModel(
      catId: 1,
      catName: "Computers hardware",
      catImage: "assets/images/temp/computer hardware.jpeg"),
  CategoryModel(
      catId: 2,
      catName: "Vegetable and Fruit",
      catImage: "assets/images/temp/vegfruit.jpeg"),
       CategoryModel(
      catId: 3,
      catName: "Dairy fgggggggg ggfggg",
      catImage: "assets/images/temp/dairy.jpeg"),
       CategoryModel(
      catId: 4,
      catName: "Utensils",
      catImage: "assets/images/temp/utensils.jpeg")
];
