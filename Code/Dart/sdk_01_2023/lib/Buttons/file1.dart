import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonClass1 extends StatefulWidget {
  const ButtonClass1({Key? key}) : super(key: key);

  @override
  State<ButtonClass1> createState() => _ButtonClass1State();
}

class _ButtonClass1State extends State<ButtonClass1> {
  int number = 0;
  Color color = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        backgroundColor: color,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Icon(Icons.add),
            onPressed: () {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text("I Clicked ")));
              setState(() {
                number++;
                log("$number");
                color = Colors.green;
              });
            },
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "$number",
            style: TextStyle(fontSize: 18),
          )
        ],
      )),
    );
  }
}
