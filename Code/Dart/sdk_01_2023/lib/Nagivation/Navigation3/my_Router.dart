import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/screens/home_page_nav3.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/screens/page1_nav3.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/screens/page2_nav3.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/undefined_page.dart';

import 'const_route.dart';

class MyRouter {
  //2 functions

  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) { //"*****"
      case homePageRoute:
        return _route(HomePageNav3());
      case page1Route:
        return _route(Page1Nav3());
      case page2Route:
        return _route(Page2Nav3());

      default:
        {
          return _route(UndefinedPage());
        }
    }
  }

  static MaterialPageRoute _route(Widget page) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
