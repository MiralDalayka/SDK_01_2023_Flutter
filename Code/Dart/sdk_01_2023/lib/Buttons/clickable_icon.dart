import 'package:flutter/material.dart';

class ClickableWidget1 extends StatefulWidget {
  const ClickableWidget1({Key? key}) : super(key: key);

  @override
  State<ClickableWidget1> createState() => _ClickableWidget1State();
}

class _ClickableWidget1State extends State<ClickableWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Icon(
            Icons.add,
            size: 100,
          ),
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("&&&&")));
          },
        ),
      ),
    );
  }
}
