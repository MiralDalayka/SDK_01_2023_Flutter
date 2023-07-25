import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVisible = true;

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
                            children: [
                              Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.green,
                              )),
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey, fontSize: 20),
                              hintText: 'David Spade',
                              hintStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.green,
                              )),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey, fontSize: 20),
                              hintText: 'iamdavid@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                              ),
                            ),
                            validator: (email) {
                              if (email!.isEmpty) return "Required!";
                              if (!emailvalidtion(email))
                                return "email is not valid";
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              //borders

                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.green,
                              )),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.blueGrey, fontSize: 20),
                              hintText: '*******',
                              hintStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                              ),
                              suffix: isVisible
                                  ? InkWell(
                                      child: Icon(Icons.visibility),
                                      onTap: () {
                                        setState(() {
                                          isVisible = !isVisible;
                                        });
                                      },
                                    )
                                  : InkWell(
                                      child: Icon(Icons.visibility_off),
                                      onTap: () {
                                        setState(() {
                                          isVisible = !isVisible;
                                        });
                                      },
                                    ),
                            ),
                            validator: (pass) {
                              if (pass!.isEmpty) return "Required!";
                              return null;
                            },
                            obscureText: isVisible,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("SIGN UP")),
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
