import 'package:flutter/material.dart';

class RichTextClass extends StatefulWidget {
  const RichTextClass({Key? key}) : super(key: key);

  @override
  State<RichTextClass> createState() => _RichTextClassState();
}

class _RichTextClassState extends State<RichTextClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rich Text"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // height: 100,
          // width: 100,
          color: Colors.blue.shade200,
          child: Center(
            child: RichText(
              text: TextSpan(
                  text: "***********",
                  style: TextStyle(fontSize: 50),
                  children: const <TextSpan>[
                    TextSpan(
                        text: "^^^^^^",
                        style: TextStyle(color: Colors.redAccent)),
                    TextSpan(text: "*********")
                  ]),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
