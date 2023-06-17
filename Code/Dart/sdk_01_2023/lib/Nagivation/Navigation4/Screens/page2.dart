import 'package:flutter/material.dart';

import '../user_model.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.model});

  final User model;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Name : ${widget.model.name}"),
            Text("User Email :${widget.model.email}")
          ],
        ),
      ),
    );
  }
}
