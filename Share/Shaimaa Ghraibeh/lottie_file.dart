import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  double sizeBox = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: 275,
                      height: 275,
                      child:
                  Lottie.network('https://assets5.lottiefiles.com/packages/lf20_AMBEWz.json'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                         borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(Icons.account_circle,color: Colors.red,),
                        labelText:"Email" ,
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        hintText: "Name@gmail.com",
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sizeBox*2,
                  ),

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(Icons.call,color: Colors.red,),
                        labelText: "PhNo",
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                          hintText: "07********",
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                      padding: const  EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){},
                        child: Text("Sign In"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      textStyle: TextStyle(
                        fontSize: 18,
                      )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
