import 'package:flutter/material.dart';

class ColumnWidgetClass extends StatefulWidget {
  const ColumnWidgetClass({Key? key}) : super(key: key);

  @override
  State<ColumnWidgetClass> createState() => _ColumnWidgetClassState();
}

class _ColumnWidgetClassState extends State<ColumnWidgetClass> {
  @override
  Widget build(BuildContext context) {
    double width = 100, height = 100;
    return Scaffold(
        appBar: AppBar(
          title: Text("Column Widget Class"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
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
            Container(
              color: Colors.green,
              width: 100,
              height: height,
            ),
          ],
        ));
  }
}
