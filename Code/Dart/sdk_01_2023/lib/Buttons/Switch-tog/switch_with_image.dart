import 'dart:developer';

import 'package:flutter/material.dart';

class SwitchButton2 extends StatefulWidget {
  const SwitchButton2({Key? key}) : super(key: key);

  @override
  State<SwitchButton2> createState() => _SwitchButton2State();
}

class _SwitchButton2State extends State<SwitchButton2> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: isOn?Colors.redAccent:Colors.yellow ,
      appBar: AppBar(title: Text("Switch Button"),),
      body: Center(
        child: Switch(
          value: isOn,
          onChanged: (isOnPam) {
            setState(() {
              log("Before");
              isOn = isOnPam;
              // isOn?isOn = false: isOn = true;
              log("After");

            });
          },
          //UI PART
        inactiveThumbImage:NetworkImage("https://img.icons8.com/?size=512&id=46644&format=png") ,

          activeThumbImage: NetworkImage("https://img.icons8.com/?size=1x&id=113140&format=png"),
          inactiveTrackColor: Colors.green,
          activeTrackColor: Colors.yellow,
          activeColor: Colors.green,

        ),
      ),
    );
  }
}
