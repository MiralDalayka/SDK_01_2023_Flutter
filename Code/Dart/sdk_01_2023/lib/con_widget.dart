import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 101,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.green,


          ),
        ),
      )
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
