
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Form2 extends StatefulWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                      'https://ouch-cdn2.icons8.com/bmq0dUb2YVPwaQ5SmessDudXEdGYcjoIfVKhg84eEUY/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMzkx/LzYxOWM3YjAzLWQ0/OTctNGMyMC1hMDc0/LWU2MmUxZmI5YTMz/ZS5zdmc.png'),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.amberAccent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amberAccent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(Icons.account_circle, color: Colors
                            .deepPurpleAccent,),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        hintText: 'name@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      validator: (email){
                        if (email!.isEmpty) {
                          return 'Required!';
                        }
                        if(!emailValidation(email)){
                          return 'Email Is Not Valid';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(IconData(
                            0xf11a, fontFamily: 'MaterialIcons'), color: Colors
                            .deepPurpleAccent),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amberAccent,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        hintText: '07********',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        suffix: isVisible?InkWell(
                          child: Icon(Icons.visibility_off_rounded,
                          color: Colors.deepPurpleAccent,),onTap: (){
                            setState(() {
                              isVisible=!isVisible;
                            });
                        },
                        ):
                            InkWell(child:
                              Icon(Icons.visibility,color: Colors.deepPurpleAccent,),onTap: (){
                              setState(() {
                                isVisible=!isVisible;
                              });
                            },
                            ),
                      ),
                      validator: (pass){
                        if(pass!.isEmpty){
                          return 'Required!';
                        }
                        if(pass!.length<8){
                          return 'Minimum 8 Characters';
                        }
                        return null;
                      },
                      obscureText: isVisible,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      if(formKey.currentState!.validate()){
                        log("Data Is Valid");
                      }
                      else{
                        log("Data Isn't Valid");
                      }

                    },
                      child: Text('Sign In'),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          textStyle: TextStyle(
                            fontSize: 20,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  bool emailValidation(String email){
    return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email);
  }
}

