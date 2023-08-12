import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealTimeExample1 extends StatefulWidget {
  const RealTimeExample1({Key? key}) : super(key: key);

  @override
  State<RealTimeExample1> createState() => _RealTimeExample1State();
}

class _RealTimeExample1State extends State<RealTimeExample1> {
  @override
  Widget build(BuildContext context) {
    final FirebaseDatabase firebaseDatabase = FirebaseDatabase.instance;
    final DatabaseReference reference = firebaseDatabase.ref();
    String root = "USER";
    final name = TextEditingController();
    final age = TextEditingController();
    final address = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Real Time Example 1"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Name: "),
                  Expanded(
                    child: TextField(
                      controller: name,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text("Age: "),
                  Expanded(
                    child: TextField(
                      controller: age,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text("Address: "),
                  Expanded(
                    child: TextField(
                      controller: address,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    //here
                    log(name.text);
                    var userData = <String, dynamic>{};
                    userData['name'] = name.text;
                    userData['age'] = age.text;
                    userData['address'] = address.text;
                    var key = reference.push().key;
                    log(key!);
                    reference.child(root).child(key).set(userData).whenComplete(() {
                      name.clear();
                      age.clear();
                      address.clear();
                      log("CLEAR");
                    });
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
