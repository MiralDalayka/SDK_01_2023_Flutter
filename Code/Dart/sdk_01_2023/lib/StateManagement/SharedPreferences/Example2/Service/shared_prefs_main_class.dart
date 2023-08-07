//create a static class that controls the shared prefs across all app
import 'package:shared_preferences/shared_preferences.dart';

class Prefs{
static late SharedPreferences _prefs;

static Future<SharedPreferences> init() async{
  _prefs = await SharedPreferences.getInstance();

  return _prefs;
}

//function sett - get

static Future<bool> setString(String key,String value){
 return  _prefs.setString(key, value);
}
  static Future<bool> setInt(String key,int value){
    return  _prefs.setInt(key, value);
  }
  static Future<bool> setBool(String key,bool value){
    return  _prefs.setBool(key, value);
  }

  static Future<bool> setDouble(String key,double value){
    return  _prefs.setDouble(key, value);
  }

  static Future<bool> setStringList(String key,List<String> value){
    return  _prefs.setStringList(key, value);
  }


  static String? getString(String key){

  return _prefs.getString(key);
  }
  static int? getInt(String key){

    return _prefs.getInt(key);
  }

  static double? getDouble(String key){

    return _prefs.getDouble(key);
  }

  static bool? getBool(String key){

    return _prefs.getBool(key);
  }

  static List<String>? getStringList(String key){

    return _prefs.getStringList(key);
  }


  // NEW functions
static Set<String> getKeys(){
  return _prefs.getKeys();
}

static bool containKeys(String key){
  return _prefs.containsKey(key);
}

static Future<bool> remove(String key){
  return _prefs.remove(key);
}

static Future<bool> clear(){
  return _prefs.clear();
}

}