// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:layout/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpref extends StatefulWidget {
  const Sharedpref({super.key});

  @override
  State<Sharedpref> createState() => _SharedprefState();
}

class _SharedprefState extends State<Sharedpref> {
  var colors = [Colors.white, Colors.blueAccent, Colors.green];
  var colorNames = ["White", "Blue", "Green"];
  Color selectedColor = Colors.white;
  Color? colorName;

  @override
  void initState() {
    super.initState();
    if (prefs!.containsKey("color")) {
      selectedColor = colors[prefs!.getInt("color")!];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectedColor,
        body: Center(
          child: Container(
            height: 500,
            width: 200,
            color: Colors.amber,
            child: ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                colorName = colors[index];
                return RadioListTile(
                  value: colors[index],
                  groupValue: selectedColor,
                  onChanged: (value) async {
                    await prefs!.setInt("color", index);
                    selectedColor = value!;

                    setState(() {});
                  },
                  title: Text(colorNames[index]),
                );
              },
            ),
          ),
        ));
  }
}
