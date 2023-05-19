// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

List<String> paths = [
  "assets/cuisine.jpg",
  "assets/img5.jpeg",
  "assets/img4.jpeg",
  "assets/img.jpeg",
  
];

int tracker = 0;

class SlidingViewer extends StatefulWidget {
  const SlidingViewer({super.key});

  @override
  State<SlidingViewer> createState() => _SlidingViewerState();
}

class _SlidingViewerState extends State<SlidingViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("PHOTO SLIDER"),backgroundColor:Colors.purple,centerTitle:true,),
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            width: 357,
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5)),
            child: Image.asset(paths[tracker], fit: BoxFit.fitHeight),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                       if (tracker < paths.length-1) {
                        tracker++;
                      }
                    });
                   
                  },
                  child: const Text("BACKWARD")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {

                setState(() {

                  if (tracker > 0) {
                        tracker--;
                      }
                  
                });
                
              }, child: const Text("FORWARD")),
            ],
          ),
        ],
      ),
    ));
  }
}
