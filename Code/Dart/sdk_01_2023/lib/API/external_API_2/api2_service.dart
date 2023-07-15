import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'api2_model.dart';

class DailyService {
  //2
  Future<String> _load() async {
    var headers = {
      'X-RapidAPI-Key': '5aa60d048emsh219245f3ae8fad5p1cb32djsnd7a9758e07e9',
      'X-RapidAPI-Host':
          'daily-atmosphere-carbon-dioxide-concentration.p.rapidapi.com'
    };

    var url = Uri.parse(
        "https://daily-atmosphere-carbon-dioxide-concentration.p.rapidapi.com/api/co2-api");

    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      // Request successful
      var responseBody = response.body;
      // Do something with the response body
      log(responseBody);
      return responseBody;
    } else {
      // Request failed
      log('Request failed with status: ${response.statusCode}');
      return "*";
    }
  }

  Future<Co2Model> getData() async {
    var data = await _load();
    if (data != "*") {
      var decoded = json.decode(data);
      return Co2Model.fromJson(decoded);
    }
    return Co2Model.fromJson({});
  }
}
