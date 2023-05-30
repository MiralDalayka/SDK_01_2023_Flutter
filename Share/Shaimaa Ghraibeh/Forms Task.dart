import 'dart:developer';

import 'package:flutter/material.dart';
class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  final formKey = GlobalKey<FormState>();
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
                      validator: (input){
                        if(input!.isEmpty) return "Required";
                        return null;
                      },
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
                        labelText: 'Password',
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
}
