class AddressModel {
  String? city;
  List<String>? streets;

  AddressModel({this.city, this.streets});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
        city: json['city'], streets: json['streets'].cast<String>());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['streets'] = this.streets;
    return data;
  }
}
