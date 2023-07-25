import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.network(
          "https://www.chinaecarts.com/images/v/2018-12-24/CEC_BTS_0216.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}