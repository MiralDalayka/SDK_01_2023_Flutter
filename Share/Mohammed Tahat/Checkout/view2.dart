import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View2 extends StatefulWidget {
  const View2({Key? key}) : super(key: key);

  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  String? con;

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
          "Checkot",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(



            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile(
                    title:
                    Text("Billing address is the same as delivery address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    value: "A",
                    groupValue: con,
                    onChanged: (String? val) {
                      setState(() {
                        con = val;
                      });
                    }),
              ),

              TextFormfild("Street 1", "21, Alex Davidson Avenue"),
              TextFormfild("Street 2", "Opposite Omegatron, Vicent Quarters"),
              TextFormfild("City", " Victoria Island "),
              Row(
                children: [
                  Container(
                      width: 100, child: TextFormfild("State", "Lagos State")),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                      width: 100, child: TextFormfild("Country", "Nigeria")),
                ],
              ),
              SizedBox(
                height: 150,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Center(
                        child: Text("BACK",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 100,
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
        ),
      ]),
    );
  }

  Widget TextFormfild(String text1, String text2) {
    return TextFormField(
        decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.green,
      )),
      labelText: text1,
      labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
      hintText: text2,
      hintStyle: TextStyle(
        color: Colors.black87,
        fontSize: 18,
      ),
    ));
  }
}
