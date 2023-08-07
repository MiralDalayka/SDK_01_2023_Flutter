import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/Service/user_sevice.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/button_widget.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/password_text_field_widget.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/text_field_widget.dart';

import '../../../../Navigation/router_navigation/Example2/constant_router.dart';
import '../Service/shared_prefs_main_class.dart';
import '../navigations/constant_route.dart';
import 'const_style.dart';

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
  UserService _service = UserService();

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
                            //welco -> reg -> log : pushName

                            Navigator.of(context).popAndPushNamed(
                                logInPageRoute); //welcome  -> log
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
                          //fill map -
                          userMap['email'] = email.text;
                          userMap['name'] = name.text;
                          userMap['address'] = address.text;
                          userMap['password'] = password.text;
                          bool result = await _service.register(userMap);
                          if (result) {
                            Prefs.setString("userEmail", email.text);

                            Navigator.of(context).popAndPushNamed(
                                logInPageRoute); //sign up  -> log

                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Something wrong happened")));
                          }
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
