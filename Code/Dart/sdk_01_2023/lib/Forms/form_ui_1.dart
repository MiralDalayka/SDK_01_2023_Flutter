import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Form1 extends StatefulWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form UI 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network(
                      'https://assets5.lottiefiles.com/packages/lf20_mNvu7WUM7W.json'),
                  TextFormField(
                    decoration: InputDecoration(
                      //1 border - labels - icon - optional
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink, width: 5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.brown, width: 10)),
                      //2:
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                      ),
                      hintText: "Example@email.com",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.green),
                      //3: icons
                      suffixIcon: Icon(Icons.add_box),
                      prefixIcon: Icon(Icons.ac_unit),
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: fun(Colors.brown, Colors.pink, "Password",
                        "******", Icons.account_circle),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: fun(
                        Colors.green,
                        Colors.deepPurple,
                        "PhNo",
                        "0123456789",
                        IconData(0xee2b, fontFamily: 'MaterialIcons')),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: fun(Colors.brown, Colors.pink, "Password",
                        "******", Icons.account_circle),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: fun(
                        Colors.green,
                        Colors.deepPurple,
                        "PhNo",
                        "0123456789",
                        IconData(0xee2b, fontFamily: 'MaterialIcons')),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Save"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration fun(Color color1, Color color2, String labelText,
      String hintText, IconData iconData) {
    return InputDecoration(
        //1 border - labels - icon - optional
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color1, width: 5),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color2, width: 5),
            borderRadius: BorderRadius.circular(20)),
        //text
        labelText: labelText,
        labelStyle: TextStyle(
          color: color1,
          fontSize: 20,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: color2,
          fontSize: 20,
        ),
        prefixIcon: Icon(iconData));
  }
}
