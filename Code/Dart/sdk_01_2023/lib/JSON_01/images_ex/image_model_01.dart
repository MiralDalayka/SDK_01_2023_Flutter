class PhotoModel {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}

class ImagesList {
  List<PhotoModel> images;

  ImagesList(this.images);

  factory ImagesList.fromJson(List<dynamic> photos) {
    //list of jsons objects --> json call factory -> result ->  list
    List<PhotoModel> temp = [];
    temp = photos.map((item) => PhotoModel.fromJson(item)).toList();

    return ImagesList(temp);
  }
}
