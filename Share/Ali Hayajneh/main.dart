import 'package:flutter/material.dart';
import 'package:layout/homepage.dart';
import 'package:layout/pathclip.dart';
import 'package:layout/paypal.dart';
import 'package:layout/radiobutton.dart';
import 'package:layout/sharedpref.dart';
import 'package:shared_preferences/shared_preferences.dart';



   SharedPreferences? prefs;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 prefs =await SharedPreferences.getInstance() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      

      home: const Sharedpref(),
    );
  }
}

