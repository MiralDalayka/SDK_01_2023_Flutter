import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key, required this.counter}) : super(key: key);

  final counter;

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      color: Colors.green,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Text(
        counter.toString(),
        style: TextStyle(fontSize: 30, color: Colors.deepPurple),
      )),
    );
  }
}
