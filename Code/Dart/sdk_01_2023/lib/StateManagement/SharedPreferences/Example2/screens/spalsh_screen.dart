import 'dart:convert';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/StateManagment/Example2/Navigation/constRoute.dart';
import 'package:miral_flutter_01_2023/StateManagment/Example2/screens/home_screen.dart';
import 'package:miral_flutter_01_2023/StateManagment/Example2/screens/welcome.dart';
import '../model.dart';
import '../service/shared_file.dart';
import 'const_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: AnimatedSplashScreen.withScreenFunction(
              splash: 'assets/images/team_illustration.png',
              splashIconSize: 300,
              backgroundColor: cBackgroundColor,
              screenFunction: () async {
                //log -> t home , f -> wel
                var state = userLogInState(); //t , f
                if (state) {
                  // model.id = 1, 2 , other
                  UserModel model = getUserModel();
                  if (model.id == '1') {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("You don't have an account")));
                    return SharedPrefsWelcomePage();
                  } else if (model.id == '2') {
                    SnackBar(content: Text("Wrong data"));
                    return SharedPrefsWelcomePage();
                  } else {
                    return SharedPrefsHomePage(
                      model: model,
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You don't have an account")));
                  return SharedPrefsWelcomePage();
                }
              },
              splashTransition: SplashTransition.fadeTransition,
            ),
          ),
          // SizedBox(height: 50,),
          Expanded(
            flex: 1,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  bool userLogInState() {
    return Prefs.getBool('logInState') ?? false;
  }

  UserModel getUserModel() {
    //get email key
    var email = Prefs.getString('UserEmail'); //real email user
    if (email == null) {
      return UserModel(id: '1');
    } else {
      var userData = Prefs.getString(email);
      if (userData == null) {
        return UserModel(id: '2');
      } else {
        //data as string -> json object
        var decodeJson = json.decode(userData);
        //json object -> model
        var model = UserModel.fromJson(decodeJson);
        return model;
      }
    }
  }
}
