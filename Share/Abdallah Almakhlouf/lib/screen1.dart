import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class RealTime1 extends StatefulWidget {
  const RealTime1({super.key});

  @override
  State<RealTime1> createState() => _RealTime1State();
}

class _RealTime1State extends State<RealTime1> {
  @override
  Widget build(BuildContext context) {
    final FirebaseDatabase firebaseDatabase =FirebaseDatabase.instance;
    final DatabaseReference reference =firebaseDatabase.ref();
    final root = "user";
    final name = TextEditingController();
    final age= TextEditingController();
    final Address = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Realtime Example"),
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
                      controller: Address,
                    ),
                  )
                ],


              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                log(name.text);
                var userdata = <String,dynamic>{};
                userdata ['name'] = name.text;
                userdata ['age'] = age.text;
                userdata ['Address'] = Address.text;
                var key =reference.push().key;
                log(key!);

                reference.child(root).child(key).set(userdata);
              }, child: Text("save"))
            ],
          ),
        ),
      ),
    );
  }
}
