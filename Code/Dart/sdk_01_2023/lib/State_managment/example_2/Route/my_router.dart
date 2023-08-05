import 'package:flutter/material.dart';

import '../../../Utils/Route/undefinied_page.dart';
import '../view/screens/register_page.dart';
import '../view/screens/welcome_page.dart';
import 'const_route.dart';


class RouterClass {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case welcomePageRoute:
        {
          return _route(SharedPrefsWelcomePage());
        }
      case signUpPageRoute:
        {
          return _route(SharedPrefsRegisterPage());
        }

      default:
        {
          return _route(UndefinedPage());
        }
    }
  }

  static MaterialPageRoute _route(Widget child) {
    return MaterialPageRoute(builder: (_) {
      return child;
    });
  }
}