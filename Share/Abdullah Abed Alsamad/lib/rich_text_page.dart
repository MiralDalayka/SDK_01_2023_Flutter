import 'package:flutter/material.dart';

class Paidg extends StatefulWidget {
  const Paidg({Key? key}) : super(key: key);

  @override
  State<Paidg> createState() => _PaidgState();
}

class _PaidgState extends State<Paidg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("x"),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo.shade200,
            child: Center(child: RichText(text: TextSpan()), )));
  }
}
