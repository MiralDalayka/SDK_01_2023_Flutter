import 'package:flutter/foundation.dart';

class PostModel extends ChangeNotifier {
  String? id;
  String? title;
  String? subtitle;
  String? img;
  String? date;

  PostModel({this.id, this.title, this.subtitle, this.img, this.date});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    img = json['img'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['img'] = img;
    data['date'] = date;
    return data;
  }
}

class PostList {
  List<PostModel> posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic> data) {
    List<PostModel> dataList = data.map((item) =>
        PostModel.fromJson(item as Map<String, dynamic>)
    ).toList();
    return PostList(posts: dataList);
  }
}
