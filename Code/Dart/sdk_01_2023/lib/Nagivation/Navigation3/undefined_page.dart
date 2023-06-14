import 'package:flutter/material.dart';

class UndefinedPage extends StatefulWidget {
  const UndefinedPage({Key? key}) : super(key: key);

  @override
  State<UndefinedPage> createState() => _UndefinedPageState();
}

class _UndefinedPageState extends State<UndefinedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("404", style: TextStyle(fontSize: 100)),
      ),
    );
  }
}
