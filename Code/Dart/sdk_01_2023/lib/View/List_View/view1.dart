import 'package:flutter/material.dart';

class View1 extends StatefulWidget {
  const View1({Key? key}) : super(key: key);

  @override
  State<View1> createState() => _View1State();
}

class _View1State extends State<View1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 1"),
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        reverse: true,
        children: [
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
