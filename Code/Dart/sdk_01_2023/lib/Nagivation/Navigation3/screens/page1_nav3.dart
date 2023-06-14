import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/const_route.dart';

class Page1Nav3 extends StatefulWidget {
  const Page1Nav3({Key? key}) : super(key: key);

  @override
  State<Page1Nav3> createState() => _Page1Nav3State();
}

class _Page1Nav3State extends State<Page1Nav3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Page 1 ", style: TextStyle(fontSize: 30)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(page2Route);
              },
              child: Text("Go To Page 2"))
        ],
      ),
    );
  }
}
