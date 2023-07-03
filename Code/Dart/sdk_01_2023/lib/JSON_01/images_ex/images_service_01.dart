import 'dart:convert';

import 'package:flutter/services.dart';

import 'image_model_01.dart';

class ImagesService {
  Future<String> _load() async {
    String data =
        await rootBundle.loadString('assets/JSONs/photos_json_01.json');
    return data;
  }

  // string --> json [] --> model []

Future<ImagesList> getData()async{
    String data =await _load(); //

    var decodedData = json.decode(data);

   return ImagesList.fromJson(decodedData);
 }
}
