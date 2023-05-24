import 'package:flutter/material.dart';

class TaskStack extends StatefulWidget {
  const TaskStack({Key? key}) : super(key: key);

  @override
  State<TaskStack> createState() => _TaskStackState();
}

class _TaskStackState extends State<TaskStack> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(title: Text("*"),),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.white,
            ),
            Container(
              width: double.infinity,
              height: height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: const Color.fromARGB(255, 138, 85, 148)),
            ),
            Positioned(
              top: height / 8,
              left: width / 4,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 208, 157, 216),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: height / 8,
              left: width / 4,
              child: Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 168, 235),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: height / 8,
              left: width / 3,
              child: Container(
                width: 115,
                height: 150,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: CircleAvatar(
                    radius: 20,
                    child: RichText(
                      text: TextSpan(children: const [
                        TextSpan(
                            text: "Your score\n",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 79, 208),
                                fontSize: 15)),
                        TextSpan(
                            text: " 150",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 79, 208),
                                fontSize: 25)),
                        TextSpan(
                            text: " pt",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 79, 208),
                                fontSize: 15)),
                      ]),
                    )),
              ),
            ),
            Positioned(
              top: height / 2.5,
              left: width / 15,
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
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
                      children: const [
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
            Positioned(
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(height: 500),
                        Icon(
                          Icons.replay_10,
                          color: Colors.blue,
                          size: 50,
                        ),
                        Text("Play Again",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
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
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(height: 500),
                        Icon(
                          IconData(
                            0xf424,
                          ),
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
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
