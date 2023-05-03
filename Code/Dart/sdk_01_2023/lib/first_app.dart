import 'package:flutter/material.dart ';

class FirstApp extends StatefulWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("*******"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.redAccent.shade200,
        child: const Text(
          "%%%%%%%%%%%%%",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed,
          backgroundColor: Colors.yellow,
            letterSpacing: 50,

          ),
        ),
      ),
    );
  }
}
