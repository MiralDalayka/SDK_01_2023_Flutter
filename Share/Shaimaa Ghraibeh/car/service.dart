import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'car_model.dart';

class CarsService {
  //2 func
  Future<String> _load() async {
    var url =
    Uri.parse("https://my.api.mockaroo.com/car_info.json?key=27701450");

    var response = await http.get(url);
    // response.statusCode --> 200

    if (response.statusCode == 200) {
      return response.body;
    }
    return "ERROR";
  }

  //

  Future<CarsList> getData() async {
    //get data --> String

    var data = await _load();
    //data 2:
    if (data != "ERROR") {
      var decodedData = json.decode(data);

      return CarsList.fromJson(decodedData);
    }
    log("Empty");
    return CarsList.fromJson([]);
  }
}