import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'food_model.dart';

class FoodService {
  String recipeName;

  FoodService(this.recipeName);

  final _headers = {
    'X-RapidAPI-Key': '5aa60d048emsh219245f3ae8fad5p1cb32djsnd7a9758e07e9',
    'X-RapidAPI-Host': 'low-carb-recipes.p.rapidapi.com'
  };

  //2
  Future<String> _load() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://low-carb-recipes.p.rapidapi.com/search?name=$recipeName&tags=keto%3Bdairy-free&includeIngredients=egg%3Bbutter&excludeIngredients=cinnamon&maxPrepareTime=10&maxCookTime=20&maxCalories=500&maxNetCarbs=5&maxSugar=3&maxAddedSugar=0&limit=10'));
    request.headers.addAll(_headers);

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      log(responseBody);
      return responseBody;
      // Process the response body here
    } else {
      log('Request failed with status: ${response.statusCode}.');
      return "*";
    }
  }

  Future<RecipeModel> getData() async {
    var data = await _load();
    if (data != "*") {
      var decoded = json.decode(data);
      return RecipeModel.fromJson(decoded);
    }
    return RecipeModel.fromJson({});
  }
}
