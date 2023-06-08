import 'package:flutter/material.dart';
class SwitchClass2 extends StatefulWidget {
  const SwitchClass2({Key? key}) : super(key: key);

  @override
  State<SwitchClass2> createState() => _SwitchClass2State();
}

class _SwitchClass2State extends State<SwitchClass2> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isOn?Colors.indigo.shade800:Colors.deepPurple.shade100,
      body:  Center(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Light Theme",style: TextStyle(color:isOn?Colors.deepPurple.shade100:Colors.deepPurple.shade200),),
              Switch(
                  value: isOn,
                  activeColor: Colors.deepPurple.shade100,
                  inactiveThumbColor: Colors.indigo.shade800,
                  onChanged: (isOnPar){
                    setState(() {
                      isOn=isOnPar;
                    });
                  }

              ),
              Text("Dark Theme",style: TextStyle(color:isOn?Colors.indigo.shade700:Colors.deepPurple.shade700),)
            ],
          ),
        ),
      ),
    );
  }
}
