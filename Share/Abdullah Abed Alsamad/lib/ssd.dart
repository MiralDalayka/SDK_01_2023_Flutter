import 'package:flutter/material.dart';

class Paidg extends StatefulWidget {
  const Paidg({Key? key}) : super(key: key);

  @override
  State<Paidg> createState() => _PaidgState();
}

class _PaidgState extends State<Paidg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("x"),
        ),
        body: Container(

            width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          color: Colors.redAccent.shade200,
          child:const Text(
            "************",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              color: Colors.black,
             decoration: TextDecoration.underline,

            ),
          )



        ));

  }
}
