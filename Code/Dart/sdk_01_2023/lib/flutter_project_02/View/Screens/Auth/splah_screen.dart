import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miral_flutter_01_2023/flutter_project_01/View/Screens/Auth/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Lottie.asset("assets/JSONs/cart_animation.json")),
          Expanded(
            flex: 1,
            child: AnimatedSplashScreen.withScreenFunction(
              splash:Icons.shopping_bag,
              screenFunction: () async {
                //await
                return SignUp();
              },
              splashTransition: SplashTransition.rotationTransition,
              // pageTransitionType: SplashType.simpleSplash,
            ),
          )
        ],
      ),
    );
  }
}
