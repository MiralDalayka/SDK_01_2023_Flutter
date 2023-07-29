class UserModel {
  String? id;
  String? fName;
  String? lName;
  String? email;
  String? password;
  String? profileImage;
  String? phNo;
  Location? location;

  UserModel(
      {this.id,
        this.fName,
        this.lName,
        this.email,
        this.password,
        this.profileImage,
        this.phNo,
        this.location});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['fName'];
    lName = json['lName'];
    email = json['email'];
    password = json['password'];
    profileImage = json['profileImage'];
    phNo = json['PhNo'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fName'] = this.fName;
    data['lName'] = this.lName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['profileImage'] = this.profileImage;
    data['PhNo'] = this.phNo;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class Location {
  String? city;
  String? street1;
  String? street2;

  Location({this.city, this.street1, this.street2});

  Location.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    street1 = json['street1'];
    street2 = json['street2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['street1'] = this.street1;
    data['street2'] = this.street2;
    return data;
  }
}
