import 'dart:developer';

import 'package:flutter/material.dart';

class TogglesView1 extends StatefulWidget {
  const TogglesView1({Key? key}) : super(key: key);

  @override
  State<TogglesView1> createState() => _TogglesView1State();
}

class _TogglesView1State extends State<TogglesView1> {
  List<bool> isSelected = [true, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggles"),
      ),
      body: Center(
        child: ToggleButtons(
          isSelected: isSelected,
          children: [
            Icon(Icons.bed),
            Icon(Icons.local_drink_sharp),
            Icon(Icons.no_food_outlined),
          ],
          onPressed: (index) {
            setState(() {
              log("*");
              isSelected[index] = !isSelected[index];
            });
          },
          color: Colors.redAccent,
          selectedColor: Colors.green,
//
        selectedBorderColor: Colors.black,
          borderColor: Colors.red,
          borderWidth: 5,
          borderRadius: BorderRadius.circular(15),

          //
          fillColor: Colors.yellow.shade200,
          direction: Axis.vertical,
        ),
      ),
    );
  }
}
