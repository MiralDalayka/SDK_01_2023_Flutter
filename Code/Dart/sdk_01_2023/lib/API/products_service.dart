import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:miral_flutter_01_2023/SDK_01_2023/API/product_model.dart';

class ProductService {
  //2 func
  Future<String> _load() async {
    var url =
        Uri.parse("https://my.api.mockaroo.com/products.json?key=9b500370");

    var response = await http.get(url);
    // response.statusCode --> 200

    if (response.statusCode == 200) {
      return response.body;
    }
    return "ERROR";
  }

  //

 Future<ProductsList> getData() async {
    //get data --> String

    var data = await _load();
    //data 2:
    if (data != "ERROR") {
      var decodedData = json.decode(data);

      return ProductsList.fromJson(decodedData);
    }
    log("Empty");
    return ProductsList.fromJson([]);
  }
}
