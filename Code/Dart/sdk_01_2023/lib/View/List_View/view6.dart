import 'package:flutter/material.dart';

class View6 extends StatefulWidget {
  const View6({Key? key}) : super(key: key);

  @override
  State<View6> createState() => _View6State();
}

class _View6State extends State<View6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 6"),
      ),
      body: ListWheelScrollView(
       
        itemExtent: 100,
        children: [
          myBox("post 1"),
          myBox("post 2"),
          myBox("post 3"),
          myBox("post 4"),
          myBox("post 5"),
          myBox("post 6"),
          myBox("post 1"),
          myBox("post 2"),
          myBox("post 3"),
          myBox("post 4"),
          myBox("post 5"),
          myBox("post 6"),
        ],
      ),
    );
  }

  Widget myBox(String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Center(
            child: Text(
              txt,
              style: TextStyle(fontSize: 30, color: Colors.white),
            )),
      ),
    );
  }
}
