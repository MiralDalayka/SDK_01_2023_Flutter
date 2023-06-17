import 'package:flutter/material.dart';

class UndefinedPage extends StatefulWidget {
  const UndefinedPage({super.key});

  @override
  State<UndefinedPage> createState() => _UndefinedPageState();
}

class _UndefinedPageState extends State<UndefinedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Center(
          child: Text("Page Not Found"),
        ),
      ),
    );
  }
}
