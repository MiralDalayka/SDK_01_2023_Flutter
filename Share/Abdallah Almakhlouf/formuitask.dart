import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('form ui'),

      //),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 250,
                      height: 250,
                      child: Lottie.network(
                          'https://assets4.lottiefiles.com/packages/lf20_llbjwp92qL.json')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'email',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (email) {
                        {
                          if (email!.isEmpty) return "required";
                        }

                        {
                          if (emailvaliedation(email)) return 'wrong email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (pass) {
                        if (pass!.isEmpty) return "required";
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "password",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (conpass) {
                        if (conpass!.isEmpty) return "required";
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'conform password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          log('data is valied');
                        } else {
                          log('error');
                        }
                      },
                      child: Text('Registeration'),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(
                            fontSize: 30,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool emailvaliedation(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
