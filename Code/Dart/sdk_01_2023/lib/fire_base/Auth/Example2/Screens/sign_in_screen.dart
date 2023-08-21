import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Router/router_constant.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Services/connectivity_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Services/user_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Widgets/loader.dart';

import '../Widgets/internet_connection_dailog.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  UserService userService = UserService();
  final _formKey = GlobalKey<FormState>();
  final _keyLoader = GlobalKey<State>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  String userEmail = '';

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
                        child: Text('Login',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                        onPressed: () {
                          //VALIDATE AND LOG IN
                          validateAndSubmit(context);
                        },
                      ),
                    )),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: RichText(
                      text: TextSpan(
                          text: 'Do not have an account? ',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: [
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //Navigator to  signUp;
                                    Navigator.of(context).pushNamed(signUp);
                                  })
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      TextButton.icon(
                        icon: Icon(Icons.circle_outlined),
                        label: Text('Sign In With Google'),
                        onPressed: () async {
                          await userService.signInWihGoogle();
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      TextButton.icon(
                        icon: Icon(Icons.facebook),
                        label: Text('Sign In With Facebook'),
                        onPressed: () async{
                          //here
                          await signInWithFacebook().whenComplete(() {
                            Navigator.of(context).pushNamed('routeName');
                          });
                        },
                      )
                    ],
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
        Loader.showLoadingScreen(context, _keyLoader);
        var result = await userService.signIn(_email.text, _password.text);
        Navigator.of(_keyLoader.currentContext ?? context, rootNavigator: true)
            .pop();
        if (result == "NO USER FOUND") {
          //navigation sign up
          log("navigation sign up ");
          Navigator.of(context).pushReplacementNamed(signUp);
        } else if (result == "WRONG PASSWORD,TRY AGAIN") {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Wrong Password Try Again")));
        } else {
          //navigation home page
          log("Log in is done");
          Navigator.of(context)
              .pushReplacementNamed(homeRote, arguments: result);
        }
      } else {
        internetConnectionDialog(context);
      }
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: ['email', 'public_profile', 'user_birthday'],
    );

    OAuthCredential facebookCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    final userData = await FacebookAuth.instance.getUserData();
    userEmail = userData['email'];

  return  FirebaseAuth.instance.signInWithCredential(facebookCredential);

  }
}
