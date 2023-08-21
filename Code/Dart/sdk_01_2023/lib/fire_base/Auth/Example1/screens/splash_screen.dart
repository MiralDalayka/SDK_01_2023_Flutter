import 'dart:convert';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/auth_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example1/screens/root_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: AnimatedSplashScreen.withScreenFunction(
              splash: 'assets/images/logo.png',
              splashIconSize: 150,
              screenFunction: () async {
                return RootPage();
              },
              splashTransition: SplashTransition.fadeTransition,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
