import 'package:flutter/material.dart';
import '../Utilli/Texfield widget.dart';

class RegButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const RegButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<RegButton> createState() => _RegButtonState();
}

class _RegButtonState extends State<RegButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(),
      ),
      child: Text(widget.text),
    );
  }
}

//////////////////////////////////

class AuthButton extends StatefulWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.solid, color: Colors.black12),
        ),
        minimumSize: Size(100, 60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            child: Image.network(widget.imagePath),
          ),
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
