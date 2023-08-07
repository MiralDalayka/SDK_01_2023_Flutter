import 'dart:collection';
import 'dart:convert';

import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/Model/user_model.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/Service/shared_prefs_main_class.dart';
import 'package:uuid/uuid.dart';

class UserService {
  //create -- log

  Future<bool>  register(HashMap data) async{
    var uuid = Uuid();
    // data -- > object , model
    var userModel = UserModel(
        name: data['name'],
        address: data['address'],
        email: data['email'],
        password: data['password'],
        id: uuid.v4());
    //model -> string
    var encodeModel = json.encode(userModel);

    var result = Prefs.setString(userModel.email!, encodeModel);
    return result;
  }

 UserModel signIn(String email,String password){
    var data = Prefs.getString(email);
    if(data !=null)
   {
     var decodeData= json.decode(data!);
     var userModel = UserModel.fromJson(decodeData);
     if(userModel.password == password)
       {
         return userModel;
       }
     else
       {
       return  UserModel(
           id: '-1'
         );
       }
   }
  return UserModel(
    id: '-2'
  );



  }
}
