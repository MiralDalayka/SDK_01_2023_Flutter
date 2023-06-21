import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Icon? prefix;
  final Icon? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final int?maxLines;

  const CustomTextField(
      {super.key,
      required this.keyboardType,
      required this.obscureText,
      required this.onChanged,
      required this.labelText,
      this.controller,
      this.validator,
      this.prefix, this.suffixIcon, this.contentPadding, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: TextFormField(
            maxLines:maxLines ,
            validator: validator,
            controller: controller,
            onChanged: onChanged,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              
              contentPadding:contentPadding ,
              suffixIcon: suffixIcon ,
              labelText: labelText,
              prefixIcon: prefix,
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                      color: Colors.red, style: BorderStyle.solid, width: 2)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid, width: 2)),
            )),
      ),
    );
  }
}
