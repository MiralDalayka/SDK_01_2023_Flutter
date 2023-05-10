import 'package:flutter/material.dart';

class RowWidgetClass extends StatefulWidget {
  const RowWidgetClass({Key? key}) : super(key: key);

  @override
  State<RowWidgetClass> createState() => _RowWidgetClassState();
}

class _RowWidgetClassState extends State<RowWidgetClass> {
  @override
  Widget build(BuildContext context) {
    double width = 100, height = 100;
    return Scaffold(
        appBar: AppBar(
          title: Text("Row Widget Class"),
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: height,
            ),
            Container(
              color: Colors.redAccent,
              width: 50,
              height: 50,
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                width: 500,
                height: height,
              ),
            ),

          ],
        ));
  }
}
