import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/Route/router_constant.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/Route/un_define_view.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/screens/edit_post.dart';

import '../screens/add_post.dart';
import '../screens/home_page.dart';
import '../screens/splash_screen.dart';

class MyRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRote:
        {
          return _route(SplashScreen());
        }
      case homeRote:
        {
          return _route(PostHomeScreen());
        }

      case addPostRoute:
        {
          return _route(AddPostScreen());
        }

      case editPostRoute:
        {
          var id = settings.arguments as String;
          return _route(EditPostScreen(postId: id));
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
