import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/flutter_project_01/Utili/export_files.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome,",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign",
                              style: text1,
                            ))
                      ],
                    ),
                    Text(
                      "Sing in to Countinue",
                      style: TextStyle(fontSize: 15, color: Colors.blueGrey),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?",
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: RegButton(
                          text: "Sign In",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("-OR-",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300)),
            SizedBox(
              height: 50,
            ),
            AuthButton(
              text: "Sing In with Facebook",
              imagePath:
                  "assets/images/facebook_icon.svg.png",
            ),
            SizedBox(
              height: 20,
            ),
            AuthButton(
              text: "Sing In with Google    ",
              imagePath:
                  "assets/images/googe_icon.png",
            ),
          ],
        ),
      ),
    );
  }

  bool emailvalidtion(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
