import 'package:flutter/material.dart';


class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {Key? key, required this.labelText, required this.hintText})
      : super(key: key);
  final String labelText, hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
        )),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
        ),
      ),
      validator: (email) {
        // if (email!.isEmpty) return "Required!";
        // if (!emailvalidtion(email))
        //   return "email is not valid";
        // return null;
      },
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        //borders

        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
        )),
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
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
    );
  }
}
