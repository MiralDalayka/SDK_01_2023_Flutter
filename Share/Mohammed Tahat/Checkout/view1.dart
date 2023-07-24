import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View1 extends StatefulWidget {
  const View1({Key? key}) : super(key: key);

  @override
  State<View1> createState() => _View1State();
}

class _View1State extends State<View1> {
  String?con;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {},
        ),
        title: Text("Checkot",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            "Standard Delivery",
            style: TextStyle(fontSize: 25),
          ),
          subtitle:
          Text("Order will be delivered between 3 - 5 business days"),
          value: "A",
          groupValue: con,
          onChanged: (String? val) {
            setState(() {
              con = val;
            });
          }),
      SizedBox(
        height: 50,
      ),
      RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            "Next Day Delivery",
            style: TextStyle(fontSize: 25),
          ),
          subtitle: Text(
              "Place your order before 6pm and your items will be delivered the next day"),
          value: "B",
          groupValue: con,
          onChanged: (String? val) {
            setState(() {
              con = val;
            });
          }),
      SizedBox(
        height: 50,
      ),
      RadioListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            "Nominated Delivery ",
            style: TextStyle(fontSize: 25),
          ),
          subtitle: Text(
              "Pick a particular date from the calendar and order will be delivered on selected date"),
          value: "C",
          groupValue: con,
          onChanged: (String? val) {
            setState(() {
              con = val;
            });
          }),
        Padding(
          padding: const EdgeInsets.only(right: 50,top: 80),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 180,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ),
        ),
      ]),
    );
  }



}
