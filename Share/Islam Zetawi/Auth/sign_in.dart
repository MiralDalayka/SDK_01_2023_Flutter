import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isVisible = true;

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
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
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
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.green,
                        )),
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Colors.blueGrey, fontSize: 20),
                        hintText: 'iamdavid@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                      validator: (email) {
                        if (email!.isEmpty) return "Required!";
                        if (!emailvalidtion(email)) return "email is not valid";
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
                        labelStyle:
                            TextStyle(color: Colors.blueGrey, fontSize: 20),
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
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("SIGN IN")),
                    ),
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
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.black12)),
                  minimumSize: Size(100, 60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/800px-2021_Facebook_icon.svg.png")),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Sing In with Facebook",
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.black12)),
                  minimumSize: Size(100, 60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/706px-Google_%22G%22_Logo.svg.png")),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Sing In with Google    ",
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
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
