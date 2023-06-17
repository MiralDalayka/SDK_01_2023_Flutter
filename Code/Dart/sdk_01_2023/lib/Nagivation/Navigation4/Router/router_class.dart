import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Navigation4/Router/undefinedPage.dart';

import '../Screens/page1.dart';
import '../Screens/page2.dart';
import '../user_model.dart';
import 'const_routers.dart';

class MyRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case page1Route:
        return _route(Page1());
      case page2Route:
        var user = settings.arguments as User;
        return _route(Page2(model: user,));
      default:
        return _route(UndefinedPage());
    }
  }

  static MaterialPageRoute _route(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
