import 'package:flutter/material.dart';

import '../../Utili/export_files.dart';

class RegButton extends StatefulWidget {
  const RegButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<RegButton> createState() => _RegButtonState();
}

class _RegButtonState extends State<RegButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // elevation: 0,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              // side: BorderSide(
              //     style: BorderStyle.solid, color: Colors.black12)),
              ),
          // minimumSize: Size(100, 60)),
        ),
        child: Text(widget.text));
  }
}

//////////////////////////////////
class AuthButton extends StatefulWidget {
  const AuthButton({Key? key, required this.imagePath, required this.text})
      : super(key: key);
  final String imagePath;
  final String text;

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              side:
                  BorderSide(style: BorderStyle.solid, color: Colors.black12)),
          minimumSize: Size(100, 60)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 30, width: 30, child: Image.network(widget.imagePath)),
          SizedBox(
            width: 40,
          ),
          Text(
            widget.text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
