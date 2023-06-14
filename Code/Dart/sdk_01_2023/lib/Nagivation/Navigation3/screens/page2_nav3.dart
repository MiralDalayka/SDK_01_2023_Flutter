import 'package:flutter/material.dart';

import '../const_route.dart';

class Page2Nav3 extends StatefulWidget {
  const Page2Nav3({Key? key}) : super(key: key);

  @override
  State<Page2Nav3> createState() => _Page2Nav3State();
}

class _Page2Nav3State extends State<Page2Nav3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(" Page 2", style: TextStyle(fontSize: 30)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(homePageRoute);
              },
              child: Text("Go To  HOME Page ")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("*****");
              },
              child: Text("Test Un defined")),
        ],
      ),
    );
  }
}
