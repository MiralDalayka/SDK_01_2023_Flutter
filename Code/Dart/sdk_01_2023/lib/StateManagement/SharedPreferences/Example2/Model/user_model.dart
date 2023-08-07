class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? address;

  UserModel({this.id, this.name, this.email, this.password, this.address});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    address = json['Address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['Address'] = this.address;
    return data;
  }
}
