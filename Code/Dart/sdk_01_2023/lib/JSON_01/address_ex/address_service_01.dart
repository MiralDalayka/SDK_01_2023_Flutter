import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/address_ex/address_model_01.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/JSON_01/student_ex/student_model_01.dart';

class AddressService {
  //2 functions -> load ,  convert

  Future<String> _load() async {
    String data = await rootBundle.loadString("assets/JSONs/address_json_01.json");
    return data;
  }

  // JSON --> -String- -> map ->  model
  Future<AddressModel> getData() async {
    //1.get data
    // Future<String> stringData =  _load();
    // var stringData2 = await _load();

    String stringData2 = await _load();

    //2. string -> map
    var decodedData = json.decode(stringData2);
    //3. map -> model
    AddressModel  s = AddressModel.fromJson(decodedData);
    return s;

  }
}