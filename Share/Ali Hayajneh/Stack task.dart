// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Taskstack extends StatefulWidget {
  const Taskstack({super.key});

  @override
  State<Taskstack> createState() => _TaskstackState();
}

class _TaskstackState extends State<Taskstack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Container(
            child: Row(
              crossAxisAlignment:CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    SizedBox(height: 500),
                    Icon(
                      Icons.replay_10,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("Play Again",
                    
                    style:
                    TextStyle(
            
                      decoration:TextDecoration.none,
                      fontSize:12,
            
            
                     
            
            
                    )),
                    SizedBox(height: 70),
                    Icon(
                      Icons.picture_as_pdf,
                      size: 50,
                    ),
                     Text("Generate Pdf",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                        )),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(width:30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 500),
                    Icon(
                      IconData(0xf424,),
                      color: Colors.blue,
                      size: 50,
                    ),
                     Text("Review Answers",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                        )),
                    SizedBox(height: 70),
                    Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("Home",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                        )),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 500),
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("Share",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                        )),
                 
                    SizedBox(height: 70),
                    Icon(
                      Icons.leaderboard,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("Leaderboard",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 138, 85, 148)),
        ),
        Positioned(
          top: 100,
          left: 30,
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 208, 157, 216),
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 75,
          left: 105,
          child: Container(
            width: 150,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 168, 235),
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 125,
          left: 123,
          child: Container(
            child: CircleAvatar(
                radius: 20,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Your score\n",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 5, 79, 208),
                            fontSize: 15)),
                    TextSpan(
                        text: " 150",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 5, 79, 208),
                            fontSize: 25)),
                    TextSpan(
                        text: " pt",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 5, 79, 208),
                            fontSize: 15)),
                  ]),
                )),
            width: 115,
            height: 150,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 320,
          left: 5,
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 15.0, // soften the shadow
        spreadRadius: 5.0, //extend the shadow
        offset: Offset(
          5.0, // Move to right 5  horizontally
          5.0, // Move to bottom 5 Vertically
        ),
      )
    ],
                color: Color.fromARGB(255, 235, 222, 222)),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      ". 100%",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "   Completation",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 50),
                    Text(
                      ". 13",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Correct",
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.none),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      ". 20",
                      style: TextStyle(
                          fontSize: 20, decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "   Total Question",
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 50),
                    Text(
                      ". 07",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Wrong",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
