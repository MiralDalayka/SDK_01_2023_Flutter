import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/Nagivation/Navigation3/const_route.dart';


class HomePageNav3 extends StatefulWidget {
  const HomePageNav3({Key? key}) : super(key: key);

  @override
  State<HomePageNav3> createState() => _HomePageNav3State();
}

class _HomePageNav3State extends State<HomePageNav3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Home Page ", style: TextStyle(fontSize: 30)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(page1Route);
                },
                child: Text("Go To Page 1"))
          ],
        ),
      ),
    );
  }
}
