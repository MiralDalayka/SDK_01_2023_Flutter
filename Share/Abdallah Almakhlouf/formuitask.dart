import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('form ui'),

      //),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://ouch-cdn2.icons8.com/MMkWzNH-f2dqw5zJHjQMuAyF4vQV8JeAhMvLpHX22Gc/rs:fit:256:224/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMjA1/L2UzYjk0MGZmLTZl/ZjQtNGEwYi04N2M0/LTBiNzBhOGU4ZWFk/ZC5zdmc.png'),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20),


                      ),
                      labelText: 'email' ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 5,
                            ),
                          borderRadius: BorderRadius.circular(20),

                        ),
                      labelText: "password",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 5,
                            ),borderRadius: BorderRadius.circular(20),
                        ),
                      labelText: 'conform password',
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sucssful Rigester',style: TextStyle(fontSize: 15),)),) ;
                  }, child: Text('Registeration'),
                    style: TextButton.styleFrom(


                        backgroundColor: Colors.blue,

                        textStyle: TextStyle(
                          fontSize: 30,

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
}
