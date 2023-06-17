import 'package:flutter/material.dart';

import '../Router/const_routers.dart';
import '../user_model.dart';
import 'Components/text_form_field_widget.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    //contr:
    final name = TextEditingController();
    final email = TextEditingController();

    //function <- return decoration
    InputDecoration decoration({required labelText, required hintText}) {
      return InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill Info"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                decoration: decoration(hintText: "Sara", labelText: "Name"),
                controller: name,
              ),
              TextFieldWidget(
                decoration: decoration(
                    hintText: "example@email.com", labelText: "Email"),
                controller: email,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    User model = User(email.text,name.text);
                    Navigator.of(context).pushNamed(page2Route,arguments: model);
                  },
                  child: Text("View Data"))
            ],
          ),
        ),
      ),
    );
  }
//function
}
