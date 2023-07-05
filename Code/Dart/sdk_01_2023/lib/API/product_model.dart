class ProductModel {
  String? id;
  String? name;
  double? price;
  String? picture;
  String? brandName;
  String? description;

  ProductModel(
      {this.id,
      this.name,
      this.price,
      this.picture,
      this.brandName,
      this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      picture: json['picture'],
      brandName: json['brand_name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['picture'] = this.picture;
    data['brand_name'] = this.brandName;
    data['description'] = this.description;
    return data;
  }
}

class ProductsList {
  List<ProductModel> products;

  ProductsList(this.products);

  factory ProductsList.fromJson(List<dynamic> data) {
    List<ProductModel> temp = [];
    temp = data.map((p) => ProductModel.fromJson(p)).toList();
    return ProductsList(temp);
  }
}
