import 'package:flutter/foundation.dart';

class PostModel extends ChangeNotifier {
  String? id;
  String? title;
  String? subtitle;
  String? image;
  String? date;

  PostModel({this.id, this.title, this.subtitle, this.image, this.date});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    image = json['image'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['image'] = image;
    data['date'] = date;
    return data;
  }
}

class PostList {
  List<PostModel> posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic> data) {
    List<PostModel> dataList = [];
    dataList = data.map((item) {
      return PostModel.fromJson(Map<String, dynamic>.from(item));
    }).toList();
    return PostList(posts: dataList);
  }
}
