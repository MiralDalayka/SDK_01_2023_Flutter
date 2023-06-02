// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formstate = GlobalKey();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
              child: Column(children: [
            SizedBox(
              height: 60,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 300,
                child: TextFormField(
                  key: formstate,
                  autovalidateMode: AutovalidateMode.always,
                  autofocus: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: "Email",
                  ),
                  validator: (text) {
                    if (EmailValidator.validate(text!) == false) {
                     
                      return "invalid value";
                    }
                    return null;
                  },
                )),
            SizedBox(height: 10),
            SizedBox(
                width: 300,
                child: TextFormField(
                  obscureText: isHidden,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Password",
                      suffix: InkWell(
                        onTap: togglePasswordView,
                        child: Icon(Icons.visibility),
                      )),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text("Forget password?")),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.black),
                  child: const Text(' Log in')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  Expanded(child: const Divider(thickness: 2,)),
                  Text("Or"),
                  Expanded(child: const Divider(thickness:2,)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton.icon(
                 
                  label: Text("Continue with facebook",style:TextStyle(color: Colors.black),),
                  icon: Icon(Icons.facebook,color:Colors.blue,),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton.icon(
                icon: Icon(Icons.apple),
                label:Text("Continue with apple "),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  )),
                 
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  SizedBox(width: 80),
                  Text("Have no account now?"),
                  SizedBox(
                    width: 14,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue),
                      
                      ))
                ],
              ),
            ),
          ]))),
    );
  }

  void togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }
}
