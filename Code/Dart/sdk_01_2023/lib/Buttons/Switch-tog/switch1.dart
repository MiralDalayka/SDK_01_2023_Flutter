import 'dart:developer';

import 'package:flutter/material.dart';

class SwitchButton1 extends StatefulWidget {
  const SwitchButton1({Key? key}) : super(key: key);

  @override
  State<SwitchButton1> createState() => _SwitchButton1State();
}

class _SwitchButton1State extends State<SwitchButton1> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Switch Button")),
      body: Center(
        child: Switch(
          value: isOn,
          onChanged: (isOnPam) {
            setState(() {
              log("Before");
              // isOn = isOnPam;
              isOn?isOn = false: isOn = true;
              log("After");

            });
          },
          //UI PART
          activeColor: Colors.green,
          inactiveTrackColor: Colors.yellow,
          activeTrackColor: Colors.redAccent,
          // thumbColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
          inactiveThumbColor: Colors.deepPurple,

        ),
      ),
    );
  }
}
