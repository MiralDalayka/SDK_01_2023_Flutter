import 'package:flutter/material.dart';

class MyBoxH extends StatelessWidget {
  const MyBoxH({Key? key, required this.counter}) : super(key: key);

  final counter;

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.deepPurple,
        height: 200,
        width: 200,
        child: Center(
            child: Text(
              counter.toString(),
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            )),
      ),
    );
  }
}
