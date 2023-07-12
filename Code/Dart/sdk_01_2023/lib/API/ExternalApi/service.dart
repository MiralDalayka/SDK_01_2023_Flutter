import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'Daily_model.dart';

class DailyService {
  //2 function
  var headers = {
    'X-RapidAPI-Key': '5aa60d048emsh219245f3ae8fad5p1cb32djsnd7a9758e07e9',
    'X-RapidAPI-Host': 'daily-knowledge.p.rapidapi.com'
  };

  Future<String> _load() async {
    var url = Uri.parse(
        'https://daily-knowledge.p.rapidapi.com/chemical-elements-en.json');
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      // Request successful
      log(response.body);
      return response.body;
      // Do something with the response body
    } else {
      // Request failed
      log('Request failed with status: ${response.statusCode}');
      return "Error";
    }
  }

//convert
  Future<DailyModel> getData() async {
    //get data --> String

    var data = await _load();
    //data 2:
    if (data != "ERROR") {
      var decodedData = json.decode(data);

      return DailyModel.fromJson(decodedData);
    }
    log("Empty");
    return DailyModel.fromJson({});
  }
}
