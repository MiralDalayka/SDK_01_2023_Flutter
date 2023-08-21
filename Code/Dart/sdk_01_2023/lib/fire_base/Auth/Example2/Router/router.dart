import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Router/router_constant.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Router/un_define_view.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Screens/home_profile.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Screens/sign_in_screen.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Screens/sign_up_screen.dart';

import '../Screens/view_image.dart';

class MyRouterAuthEx2 {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        {
          return _route(SignInScreen());
        }

      // case profileWithFacebook:
      //   {
      //     final arg = settings.arguments as String;
      //     return _route(ProfileWithFacebook(userEmail: arg,));
      //   }
      case signUp:
        {
          return _route(SignUpScreen());
        }

      case imageViewer:
        {
          final arg = settings.arguments as String;
          return _route(ImageViewerScreen(url: arg));
        }

      case homeRote:
        {
          var id = settings.arguments as String;
          return _route(HomeProfileScreen(
            id: id,
          ));
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
