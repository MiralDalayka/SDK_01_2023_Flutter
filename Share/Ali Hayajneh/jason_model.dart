class JasonInfo {
  String? id;
  String? name;
  String? city;
  int? age;
  String? gender;
  String? career;

  JasonInfo(
      {this.id, this.name, this.city, this.age, this.gender, this.career});

  JasonInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    age = json['age'];
    gender = json['gender'];
    career = json['career'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['age'] = age;
    data['gender'] = gender;
    data['career'] = career;
    return data;
  }
}
