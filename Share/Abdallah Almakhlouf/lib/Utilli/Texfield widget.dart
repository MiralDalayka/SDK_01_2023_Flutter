import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  final String labelText, hintText;
  final String? Function(String?)? validator;  // Added validator
  final void Function(String?)? onSaved;       // Added onSaved

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
        ),
      ),
      validator: validator,  // Using the passed validator
      onSaved: onSaved,      // Using the passed onSaved
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, this.validator, this.onSaved}) : super(key: key);

  final String? Function(String?)? validator;  // Added validator
  final void Function(String?)? onSaved;       // Added onSaved

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
          ),
        ),
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
      validator: widget.validator,  // Using the passed validator
      onSaved: widget.onSaved,      // Using the passed onSaved
      obscureText: isVisible,
    );
  }
}
