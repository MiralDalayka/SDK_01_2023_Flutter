import 'package:flutter/material.dart';

class AlignWidget1 extends StatefulWidget {
  const AlignWidget1({Key? key}) : super(key: key);

  @override
  State<AlignWidget1> createState() => _AlignWidget1State();
}

class _AlignWidget1State extends State<AlignWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
            decoration: BoxDecoration(
              color: Color(0xcd3b3358),
            ),
              height: 200,
              width: 200,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "********",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
