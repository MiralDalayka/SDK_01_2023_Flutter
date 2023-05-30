import 'package:flutter/material.dart';
class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
        //  title: Text(""),
        //),
        body: SingleChildScrollView(
          child:Form(
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
                        prefixIcon: Icon(Icons.account_circle,color: Colors.deepPurpleAccent.shade200,),
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
                        prefixIcon: Icon(IconData(0xf11a, fontFamily: 'MaterialIcons'),color: Colors.deepPurpleAccent.shade200,),

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
                    ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sucssful Log In',style: TextStyle(fontSize: 15),)),) ;
                    }, child: Text('Log In'),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
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
