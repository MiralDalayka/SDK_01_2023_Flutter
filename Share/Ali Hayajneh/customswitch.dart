// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mywidgets/main.dart';

class CustomSwitcher extends StatefulWidget {
  const CustomSwitcher({super.key});

  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  // double left = 80;
  bool myvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: myvalue == true ? Colors.black : Colors.white,
              child: Center(
                  child: Text("dark",
                      style: TextStyle(
                        fontSize: 30,
                        color: myvalue == true ? Colors.white : Colors.black,
                      ))),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Transform.scale(
                scaleX: 2,
                scaleY: 2,
                child: Switch(
                    value: myvalue,
                    onChanged: (value) {
                      setState(() {
                        MyApp.data = Colors.blue;
                        myvalue = value;
                      });
                    }),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: myvalue == false ? Colors.black : Colors.white,
              child: Center(
                  child: Text(
                "light",
                style: TextStyle(
                    fontSize: 30,
                    color: myvalue == false ? Colors.white : Colors.black),
              )),
            ),
          )
        ],
      ),
    );
  }
}
