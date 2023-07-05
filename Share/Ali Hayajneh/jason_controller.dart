import 'dart:convert';

import 'package:flutter/services.dart';

import 'jason_model.dart';
import 'package:http/http.dart' as http;

class JasonController {
  static List<int> list = [1, 2, 3, 7,90];
  // load data from jason file and convert to string
  Future<String> loadInfo() async {
    return await rootBundle.loadString("jasonfiles/jason1.json");
  }

  Future<List<JasonInfo>> loadModel() async {
    String jasonString = await loadInfo();

    // convert jason string

    //final  Map<String,dynamic> jsonResponse = json.decode(jasonString);

    final list = json.decode(jasonString) as List<dynamic>;

    //JasonInfo jasonInfo = JasonInfo.fromJson(jsonResponse);

    return list.map((e) => JasonInfo.fromJson(e)).toList();
  }

  
}
