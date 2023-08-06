import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  var namevar = 'sara';
  var backgroundcolor= Color.fromARGB(1, 244, 177, 13);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shared prefrences'),
        backgroundColor: backgroundcolor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('add'),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var result = prefs.setString('name', namevar);
                log('$result');
              },
            ),
            ElevatedButton(
              child: Text('read '),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var result = prefs.getString('name');
                if (result == null) {
                  log('***');
                } else {
                  setState(() {
                    backgroundcolor =Color.fromARGB(1, 24, 11, 10);
                    namevar= result;
                  });
                  log(namevar);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
