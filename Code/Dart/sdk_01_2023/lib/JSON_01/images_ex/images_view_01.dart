import 'package:flutter/material.dart%20';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/images_ex/image_item.dart';

import 'image_model_01.dart';
import 'images_service_01.dart';

class ImagesView1 extends StatefulWidget {
  const ImagesView1({Key? key}) : super(key: key);

  @override
  State<ImagesView1> createState() => _ImagesView1State();
}

class _ImagesView1State extends State<ImagesView1> {
  ImagesService _service = ImagesService();
  ImagesList? imagesListObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Info "),
      ),
      body: StreamBuilder(
        stream: _service.getData().asStream() ,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            imagesListObject = snapshot.data as ImagesList;
            return Center(
              child: ListView.builder(
                  itemCount: imagesListObject!.images.length,
                  itemBuilder: ((context, index) {
                    var photo = imagesListObject!.images[index];
                    return MyItem(
                      title: photo.title.toString(),
                      albumId: photo.albumId.toString(),
                      url: photo!.url!,
                      id: photo.id.toString(),
                    );
                  })),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
