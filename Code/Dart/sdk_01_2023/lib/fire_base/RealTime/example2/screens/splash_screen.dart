import 'dart:convert';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_model.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_prefs.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_service.dart';

import 'home_page.dart';

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
              splashTransition: SplashTransition.fadeTransition,
              screenFunction: () async {
                await setPostData();
                return PostHomeScreen();
              },
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

  setPostData() async {
    PostList postList;
    List<String> postsAsStrings = [];
    PostService postService = PostService();
    var jsonData;
    var encodeData;
    //get the serv data
    postList = await postService.getPosts();
    //[]
    if (postList.posts.isNotEmpty) {
      for (var item in postList.posts) {
        jsonData = item.toJson();
        encodeData = json.encode(jsonData);
        postsAsStrings.add(encodeData);
      }
      Prefs.setStringListValue('postsData', postsAsStrings);
    }
  }
}
