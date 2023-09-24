import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:last_flutter/provider/cartt.dart';
import 'package:last_flutter/screen1.dart';
import 'package:provider/provider.dart';

import 'E_commerce/Account/donate.dart';
import 'E_commerce/Account/guset.dart';
import 'E_commerce/Account/itempage.dart';
import 'E_commerce/Signup.dart';
import 'E_commerce/home.dart';
import 'E_commerce/signin.dart';





void main() async{
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 runApp(
   ChangeNotifierProvider<Cart>(
     create: (context) => Cart(),
     child: MyApp(),
   ),
 );
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      routes: {
        "signup":(context)=>SignUp(),
        "login": (context)=>SignIn(),
        "homepage": (context)=> WelcomePage(),
      },
    );

  }
}


