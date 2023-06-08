import 'package:flutter/material.dart';
class Switch2 extends StatefulWidget {
  const Switch2({Key? key}) : super(key: key);

  @override
  State<Switch2> createState() => _Switch2State();
}

class _Switch2State extends State<Switch2> {
  bool ison =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ison?Colors.black:Colors.white,
      appBar: AppBar(backgroundColor: ison?Colors.black:Colors.white,
          title: Text('switch form',style: TextStyle(
            color: ison?Colors.white:Colors.black,
          ),)),
      body:  Center(
        child: Container(


          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("light", style: TextStyle(
                color: ison?Colors.white:Colors.black,
              )),


              Switch(
                  value: ison,
                  activeColor: Colors.black45,
                  inactiveThumbColor: Colors.white70,
                  onChanged: (isOnPar){
                    setState(() {
                      ison= isOnPar;
                    });
                  }



              ),
              Text("dark", style: TextStyle(
                color: ison?Colors.white:Colors.black,
              ),),
            ],
          ),
        ),
      ),

    );
  }
}
