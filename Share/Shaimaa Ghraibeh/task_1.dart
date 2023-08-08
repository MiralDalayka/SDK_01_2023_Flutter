import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Task_1 extends StatefulWidget {
  const Task_1({Key? key}) : super(key: key);

  @override
  State<Task_1> createState() => _Task_1State();
}

class _Task_1State extends State<Task_1> {
  var nameVar = "Shaimaa";
  var backgroundColor = Colors.deepPurpleAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences :$nameVar"),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Add"),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
              //  log('Before ${prefs.getString("name")}');

                var result = await prefs.setString('name', 'Leen');
                log('$result');
               // log("After ${prefs.getString('name')}");

              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              child: const Text("Read"),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var result = prefs.getString("name");
                if (result==null){
                  log("*****");
                }
                else{
                  setState(() {
                    backgroundColor = Colors.greenAccent;
                    nameVar = result;
                  });
                 log('${prefs.getString(('name'))}');

                }
              },
            ),
          ],
        ),
      )
    );
  }
}
