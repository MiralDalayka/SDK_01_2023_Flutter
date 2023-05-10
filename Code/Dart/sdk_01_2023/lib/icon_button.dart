import 'dart:developer';

import 'package:flutter/material.dart';

class IconButtonClass extends StatefulWidget {
  const IconButtonClass({Key? key}) : super(key: key);

  @override
  State<IconButtonClass> createState() => _IconButtonClassState();
}

class _IconButtonClassState extends State<IconButtonClass> {
  // Color color =Colors.green;
  bool isRed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isRed?Colors.redAccent:Colors.green,
          title: Text(
            "Icon Button",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Container(
            width: 70,
            height: 70,
            color: isRed?Colors.redAccent:Colors.green,
            child: IconButton(
              icon: Icon(Icons.ads_click,size: 50,),
              onPressed: () {
                log("Click");
                setState(() {
                  // color = Colors.redAccent;
                  isRed  =!isRed; // t = !t --=> f
                });

              },
            ),
          ),
        ));
  }
}
