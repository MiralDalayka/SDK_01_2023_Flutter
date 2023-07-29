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
      catImage: "https://th.bing.com/th/id/OIP.-QyGQ5F6u9Ob72fU8HXHuAHaFk?pid=ImgDet&rs=1"),
  CategoryModel(
      catId: 2,
      catName: "Vegetable and Fruit",
      catImage: "https://th.bing.com/th/id/OIP.-QyGQ5F6u9Ob72fU8HXHuAHaFk?pid=ImgDet&rs=1"),
       CategoryModel(
      catId: 3,
      catName: "Dairy fgggggggg ggfggg",
      catImage: "https://th.bing.com/th/id/OIP.-QyGQ5F6u9Ob72fU8HXHuAHaFk?pid=ImgDet&rs=1"),
       CategoryModel(
      catId: 4,
      catName: "Utensils",
      catImage: "https://th.bing.com/th/id/OIP.-QyGQ5F6u9Ob72fU8HXHuAHaFk?pid=ImgDet&rs=1")
];
