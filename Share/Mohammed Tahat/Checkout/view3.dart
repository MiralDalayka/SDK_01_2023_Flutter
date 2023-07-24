import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View3 extends StatefulWidget {
  const View3({Key? key}) : super(key: key);


  @override
  State<View3> createState() => _View3State();
}

class _View3State extends State<View3> {
  String?con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Summary ",

          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU",
                            ),
                            Text(
                              "Tag Heuer",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "\$1100",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU",
                            ),
                            Text(
                              "BeoPlay Speaker ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "\$450",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU",
                            ),
                            Text(
                              "Electric Kettle",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "\$95",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Divider(height: 5,color: Colors.black,),
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text(
                "Shipping Address ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),

              ),

              subtitle: Text(
                "21, Alex Davidson Avenue Opposite  Omegatron Vicent Smith Quarters  Victoria Island  Lagos Nigeria ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              value: "A",
              groupValue: con,
              onChanged: (String? val) {
                setState(() {
                  con = val;
                });
              }),
          SizedBox(height: 20,),
          Divider(height: 5,color: Colors.black,),
          SizedBox(height: 180,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: 80,
                  width: 160,
                  child: Center(
                    child: Text("BACK",
                        style:
                        TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("NEXT",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }


}



