import 'package:flutter/material.dart';

class MyItem extends StatelessWidget {
  const MyItem(
      {Key? key,
      required this.title,
      required this.url,
      required this.id,
      required this.albumId})
      : super(key: key);
  final String title;
  final String url;
  final String id;
  final String albumId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Image.network(url,width: 100,height: 100,),
        leading: Text(id),
        trailing: Text('albumId : $albumId'),
      ),
    );
  }
}
