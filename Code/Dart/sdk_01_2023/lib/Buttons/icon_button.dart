import 'package:flutter/material.dart';

class ClickableWidget2 extends StatefulWidget {
  const ClickableWidget2({Key? key}) : super(key: key);

  @override
  State<ClickableWidget2> createState() => _ClickableWidget2State();
}

class _ClickableWidget2State extends State<ClickableWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(

          icon:Icon( Icons.add_box,size: 100,),
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Clicked 22")));
          },
        ),
      ),
    );
  }
}
