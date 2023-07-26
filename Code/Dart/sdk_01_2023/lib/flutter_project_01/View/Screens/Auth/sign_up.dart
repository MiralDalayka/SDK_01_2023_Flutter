import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/flutter_project_01/Utili/export_files.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
          ),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormFieldWidget(
                            labelText: 'Name',
                            hintText: 'David Spade',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormFieldWidget(
                            labelText: 'Email',
                            hintText: 'iamdavid@gmail.com',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PasswordTextField(),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child:RegButton(text: "Sign Up"),
                          ),
                        ]),
                  ),
                ),
              )),
        ));
  }

  bool emailvalidtion(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
