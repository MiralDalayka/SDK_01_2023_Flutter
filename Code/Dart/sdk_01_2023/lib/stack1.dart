import 'package:flutter/material.dart';

class StackWidget1 extends StatefulWidget {
  const StackWidget1({Key? key}) : super(key: key);

  @override
  State<StackWidget1> createState() => _StackWidget1State();
}

class _StackWidget1State extends State<StackWidget1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget 1"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Material(
            color: Colors.yellow,
          ),
          // boxWidget(Colors.green, size.height, size.width),
          Positioned(
            top: 0,
            left: 0,
            child: Icon(Icons.ac_unit,size: 70,),
          ),
          Positioned(
              top: (size.height-150),
              left: (size.width-100),
              child: Icon(Icons.rectangle,size: 70,))
        ],
      ),
    );
  }

  Widget boxWidget(Color color, double w, double h) {
    return Container(
      color: color,
      width: w,
      height: h,
    );
  }
}
