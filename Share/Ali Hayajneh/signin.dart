// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:navigate/Pages/info.dart';
import '../Components/custom_textfield.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passWordcontroller = TextEditingController();
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    
    bool emailMatch = false;
    bool passwordMatch = false;

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: formstate,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("Welcome to Panorama,",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text("Sign in to Continue.",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Dont have an account?',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              TextSpan(
                                  text: 'Create an account',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 20,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        Text("it takes less than a minute"),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text("Email"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                         
                          controller: emailcontroller,
                          obscureText: false,
                          labelText: "Enter your Email",
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (text) {
                            emailcontroller.text = text;
                          },
                          validator: (text) {
                            if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text!) ==
                                false) {
                              emailcontroller.text = "not valid";
                              return;
                            }
                            emailMatch = true;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                          
                          controller: passWordcontroller,
                          obscureText: true,
                          labelText: "Enter your Password",
                          keyboardType: TextInputType.text,
                          onChanged: (text) {
                            passWordcontroller.text = text;
                          },
                          validator: (text) {
                            if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)")
                                    .hasMatch(text!) ==
                                false) {
                              passWordcontroller.text = "Th";
                              return;
                            }
                            passwordMatch = true;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Forget your Password?",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          child: Container(
                              height: 40,
                              width: 350,
                              child: Center(
                                  child: Text(
                                "Sign in",
                                style: TextStyle(color: Colors.white),
                              )),
                              color: Colors.black),
                          onTap: () {
                            formstate.currentState!.validate();
                            if (passwordMatch == true && emailMatch == true) {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>Informations(email:emailcontroller.text,)));
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 40,
                            width: 350,
                            color: Colors.grey[300],
                            child: Row(
                              children: [
                                Image.asset(
                                  "Images/google.webp",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Sign in with Google")
                              ],
                            ))
                      ]),
                ),
              ),
            )),
      ),
    );
  }
}
