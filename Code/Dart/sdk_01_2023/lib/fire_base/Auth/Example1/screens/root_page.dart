import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/screens/signin_signup_screen.dart';

import '../auth_service.dart';
import 'home_screen.dart';

enum AuthStatus {
  notDetermined,
  notLoggedIn,
  loggedIn,
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final BaseAuth auth = BaseAuth();
  AuthStatus authStatus = AuthStatus.notDetermined;
  String _userId = "";

  @override
  void initState() {
    super.initState();
    auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user.uid;
        }
        authStatus = AuthStatus.notLoggedIn;
      });
    });
  }

  void loginCallback() {
    auth.getCurrentUser().then((user) {
      setState(() {
        _userId = user!.uid.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.loggedIn;
    });
  }

  void logoutCallback() {
    setState(() {
      authStatus = AuthStatus.notLoggedIn;
      _userId = "";
    });
  }

  Widget buildWaitingScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notDetermined:
        return buildWaitingScreen();
        break;
      case AuthStatus.notLoggedIn:
        return LoginSignupPage(
          auth: auth,
          loginCallback: loginCallback,
        );
        break;
      case AuthStatus.loggedIn:
        if (_userId.length > 0 && _userId != null) {
          return HomeScreen();
        } else {
          return buildWaitingScreen();
        }
        break;
      default:
        return buildWaitingScreen();
    }
  }
}
