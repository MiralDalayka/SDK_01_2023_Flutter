import 'dart:developer';

import 'package:flutter/material.dart';
class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  double sizeBox = 20;
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
        //  title: Text(""),
        //),
        body: SingleChildScrollView(
          child:Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://ouch-cdn2.icons8.com/w1g_frAC702f1vHL5GvDxnpgG_gNkZmgy29wmbNJtoc/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTc4/L2VhNjkzZmFiLWY5/MzUtNGRhNS04MmNk/LTVkM2M2NjI1MGJh/Mi5zdmc.png'
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 2,
                          ),
                     borderRadius: BorderRadius.circular(20)
                      ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        prefixIcon: Icon(Icons.account_circle,color: Colors.amberAccent,),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        hintText: 'name@gmail.com',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        )
                        ),
                      validator: (email){
                        if(email!.isEmpty) {
                          return "Required";
                        }
                       if(!emailValidation(email)){
                         return 'Email Is Not Valid';
                       }
                        return null;
                      },
                    ),
                  ),
                  SizedBox (
                    height: sizeBox,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.deepPurpleAccent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        prefixIcon: Icon(IconData(0xf11a, fontFamily: 'MaterialIcons'),color: Colors.amberAccent,),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.deepPurpleAccent,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                            fontSize: 15,
                          ),
                        suffix:isVisible? InkWell(child:
                        Icon(Icons.visibility_off_outlined,color: Colors.deepPurpleAccent,),onTap:(){
                          setState(() {
                            isVisible=!isVisible;
                          });
                        },
                        ):
                        InkWell(child:
                        Icon(Icons.visibility_outlined,color: Colors.deepPurpleAccent,),onTap:(){
                          setState(() {
                            isVisible=!isVisible;
                          });
                        },
                        )),
                      validator: (pass){
                        if(pass!.isEmpty){
                          return "Required";
                        }
                        if(pass!.length>8){
                          return "Minimum 8 Characters";
                        }
                        return null;
                      },
                      obscureText: isVisible,
                    ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.deepPurpleAccent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        prefixIcon: Icon(IconData(0xf11a, fontFamily: 'MaterialIcons'),color: Colors.amberAccent,),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.deepPurpleAccent,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      validator: (pass){
                        if(pass!.isEmpty){
                          return "Required";
                        }
                        return null;

                      },
                    ),
                  ),
                  SizedBox(height: 20),

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
                      child: Text('Sign Up'),
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
        )
    );
  }
  bool emailValidation(String email){
    return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email);
  }
}
