class Student {
  String? name;
  String? id;
  int? score;

  Student({this.name, this.id, this.score});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(name: json['name'], id: json['id'], score: json['score']);
  }

  // Student.fromJson2(Map<String, dynamic> json) {
  //   name = json['name'];
  //   id = json['id'];
  //   score = json['score'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['score'] = score;
    return data;
  }
}

/*
st 1 --> Student s = Student("")
st 2 --> Student s2 =Student("")

st --> Student s -> s1,s2,s3.... factory


 */
