import 'package:flutter/material.dart';

class Lab7 extends StatefulWidget {
  const Lab7({Key? key}) : super(key: key);

  @override
  State<Lab7> createState() => _Lab7State();
}

class _Lab7State extends State<Lab7> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isOn ? Colors.deepOrangeAccent.shade100 : Colors.deepOrange.shade500,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dark color",style: TextStyle(
              color: isOn ? Colors.red.shade100 : Colors.redAccent.shade700,
              fontSize: 18,

            ),),
            Switch(
              value: isOn,
              onChanged: (isOnPam) {
                setState(() {
                  isOn = isOnPam;
                });
              },
              inactiveTrackColor: Colors.greenAccent,
              activeTrackColor: Colors.blue,
              activeColor:Colors.white12,
            ),
            Text("Light color",style: TextStyle(
              color: isOn ? Colors.deepOrange.shade900 : Colors.deepOrange.shade100,
              fontSize: 18,
            ),),
          ],
        ),
      ),
    );
  }
}
