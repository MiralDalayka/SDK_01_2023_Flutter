import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var nameVar = "******";
  var backgroundColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences : $nameVar"),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Add"),
              onPressed: () async{
                SharedPreferences prefs =await  SharedPreferences.getInstance();
                // log("Before ${prefs.getString('name')}");

                var result = await prefs.setString('name', 'Ahmad');
                log("$result");
                // log("After ${prefs.getString('name')}");
              },
            ),

            ElevatedButton(
              child: Text("Read"),
              onPressed: () async{
                SharedPreferences prefs2 =await  SharedPreferences.getInstance();
                // nameVar =  prefs2.getString('name')?? "null name";
              var result =  prefs2.getString('name'); //ahmad

                if(result==null) {
                  log("*****");
                } else {
                  setState(() {
                    // backgroundColor = Colors.red;
                    nameVar = result;

                  });
                  // log("${prefs2.getString('name')}");
                }
              },
            )
          ],
        )
      ),
    );
  }
}
