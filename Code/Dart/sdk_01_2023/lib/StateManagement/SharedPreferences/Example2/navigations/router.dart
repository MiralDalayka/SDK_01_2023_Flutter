import 'package:flutter/material.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/Model/user_model.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/spalsh_screen.dart';
import '../screens/undefined_page.dart';
import '../screens/welcome_page.dart';
import 'constant_route.dart';

class RouterClass {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:{
        return _route(SplashScreen());
      }
      case welcomePageRoute:
        {
          return _route(SharedPrefsWelcomePage());
        }
      case signUpPageRoute:
        {
          return _route(SharedPrefsRegisterPage());
        }
      case logInPageRoute:
        {
          return _route(SharedPrefsLogInPage());
        }

      case homePageRouteShared:
        {
          var model = settings.arguments as UserModel;
          return _route(SharedPrefsHomePage(model: model,));
        }
      default:
        {
          return _route(UnDefineRoute());
        }
    }
  }

  static MaterialPageRoute _route(Widget child) {
    return MaterialPageRoute(builder: (_) {
      return child;
    });
  }
}
