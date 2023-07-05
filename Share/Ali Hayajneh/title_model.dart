// ignore_for_file: prefer_collection_literals

class Title {
  int? userId;
  int? id;
  String? title;
  String? body;

  Title({this.userId, this.id, this.title, this.body});

  Title.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
