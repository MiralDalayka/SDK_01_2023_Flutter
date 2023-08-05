import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../Route/const_route.dart';
import '../theme_manager.dart';
import '../widgets/button_widget.dart';
import '../widgets/password_text_feild.dart';
import '../widgets/text_feild_widget.dart';

class SharedPrefsRegisterPage extends StatefulWidget {
  @override
  _SharedPrefsRegisterPageState createState() =>
      _SharedPrefsRegisterPageState();
}

class _SharedPrefsRegisterPageState extends State<SharedPrefsRegisterPage> {
  bool passwordVisibility = true;
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final address = TextEditingController();

  HashMap userMap = HashMap();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      appBar: AppBar(
        backgroundColor: cBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Register",
                            style: cHeadline,
                          ),
                          Text(
                            "Create new account to get started.",
                            style: cBodyText2,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          MyTextField(
                            controller: name,
                            hintText: 'Name',
                            inputType: TextInputType.name,
                          ),
                          MyTextField(
                            controller: email,
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          MyTextField(
                            controller: address,
                            hintText: 'Address',
                            inputType: TextInputType.streetAddress,
                          ),
                          MyPasswordField(
                            controller: password,
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: cBodyText,
                        ),
                        InkWell(
                          child: Text(
                            "Sign In",
                            style: cBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            //welcome  -> log
                            Navigator.of(context).pushNamed(logInPageRoute);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: MyTextButton(
                        buttonName: 'Register',
                        bgColor: Colors.white,
                        textColor: Colors.black87,
                        onTap: () async {
                          Uuid id = Uuid();
                          /*
                           String? id;
  String? name;
  String? email;
  String? password;
  String? address;
                           */
                          userMap['id'] = id.v4();
                          userMap['name'] = name.text;
                          userMap['password'] = password.text;
                          userMap['address'] = address.text;


                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}