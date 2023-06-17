import 'package:flutter/material.dart';

import 'Navigation4/Router/const_routers.dart';
import 'Navigation4/Router/router_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Page1(),
      initialRoute: page1Route,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
