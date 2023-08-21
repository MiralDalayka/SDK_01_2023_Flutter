
import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/Route/router_constant.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/Route/un_define_view.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/screens/home_screen.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/screens/splash_screen.dart';

class MyRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case splashRoute:{
        return _route(SplashScreen());
      }

      case homeRote:
        {
          return _route(HomeScreen());
        }



      default:
        {
          final arg = settings.name as String;
          return _route(UnDefineView(
            routeName: arg,
          ));
        }
    }
  }

  static MaterialPageRoute _route(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }
}
