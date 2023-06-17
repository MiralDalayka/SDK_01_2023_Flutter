import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key,required this.decoration,required this.controller});

  final InputDecoration decoration;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: decoration,
        controller: controller,
      ),
    );
  }
}
