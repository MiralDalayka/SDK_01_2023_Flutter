import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _pref;

  static Future<SharedPreferences> init() async {
    _pref = await SharedPreferences.getInstance();
    return _pref;
  }

  // set the setter methods
  static Future<bool> setStringValue(String key, String value) async {
    return await _pref.setString(key, value);
  }

  static Future<bool> setIntValue(String key, int value) async {
    return await _pref.setInt(key, value);
  }

  static Future<bool> setDoubleValue(String key, double value) async {
    return await _pref.setDouble(key, value);
  }

  static Future<bool> setBooleanValue(String key, bool value) async {
    return await _pref.setBool(key, value);
  }

  static Future<bool> setStringListValue(String key, List<String> value) async {
    return await _pref.setStringList(key, value);
  }

  // set the getter methods

  static String? getStringValue(String key) {
    return _pref.getString(key);
  }

  static int? getIntValue(String key) {
    return _pref.getInt(key);
  }

  static double? getDoubleValue(String key) {
    return _pref.getDouble(key);
  }

  static bool? getBooleanValue(String key) {
    return _pref.getBool(key);
  }

  static List<String>? getListStringValue(String key) {
    return _pref.getStringList(key);
  }

  // set pref method to control

  static Future<bool> removeValue(String key) async {
    return await _pref.remove(key);
  }

  static bool containsKey(String key) {
    return _pref.containsKey(key);
  }

  static Future<bool> clear() async {
    return await _pref.clear();
  }

  static Object? getValue(String key) {
    return _pref.get(key);
  }

  static List<String> getKeys() {
    return _pref.getKeys().toList();
  }
}