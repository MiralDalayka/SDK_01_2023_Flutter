import 'dart:collection';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Router/router_constant.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Services/connectivity_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Services/user_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Widgets/internet_connection_dailog.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Widgets/loader.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final UserService userService = UserService();
  final _loaderKey = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.network(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/donuts-4387378-3640543.png'),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _name,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: 'Name',
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          )),
                      validator: (value) =>
                          value!.isEmpty ? 'Name can\'t be empty' : null,
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _email,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          icon: Icon(
                            Icons.mail,
                            color: Colors.grey,
                          )),
                      validator: (value) =>
                          value!.isEmpty ? 'Email can\'t be empty' : null,
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                  child: TextFormField(
                    controller: _password,
                    maxLines: 1,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        )),
                    validator: (value) =>
                        value!.isEmpty ? 'Password can\'t be empty' : null,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                    child: SizedBox(
                      height: 40.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pinkAccent)),
                        child: Text('Sign UP',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                        onPressed: () {
                          //VALIDATE THE DATA _ SIGN UP
                          validateAndSubmit(context);
                        },
                      ),
                    )),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: [
                            TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //NAVIGATOR TO LOG IN PAGE
                                    Navigator.of(context).pushReplacementNamed(signIn);
                                  })
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndSubmit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      if (await ConnectivityService.checkInternetConnectivity()) {
        Loader.showLoadingScreen(context, _loaderKey);
        //1:
        var userData = HashMap();
        userData['email'] = _email.text.trim();
        userData['password'] = _password.text.trim();
        userData['name'] = _name.text.trim();

        //2:
        var result =await userService.signUp(userData);
        //3:
        Navigator.of(_loaderKey.currentContext ?? context, rootNavigator: true)
            .pop();

        if (result == "Weak Password") {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Password should be al least 6 letters")));
        } else if (result == "The account is already exists Try Sign in") {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Email is used")));
        } else {
          //Navigator to home page
          Navigator.of(context).pushReplacementNamed(homeRote,arguments: result);

        }
      } else {
        internetConnectionDialog(context);
      }
    }
  }
}
