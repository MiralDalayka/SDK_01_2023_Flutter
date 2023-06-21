// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

import '../Components/custom_textfield.dart';

class Teest2 extends StatefulWidget {
  final String email;
  const Teest2({super.key, required this.email});

  @override
  State<Teest2> createState() => _Teest2State();
}

class _Teest2State extends State<Teest2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Text Field",
                          style:
                              TextStyle(color: Colors.black, fontSize: 20)),
                      TextSpan(
                          text: " *",
                          style: TextStyle(color: Colors.red, fontSize: 15))
                    ]),
                  ),
                  SizedBox(
                    height: 100,
                    width: 250,
                    child: CustomTextField(
                      labelText: "Input Text",
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: null,
                      onChanged: null,
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Select Field",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15)),
                        ]),
                      ),
                      Icon(
                        Icons.help_rounded,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 260,
                    height: 100,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: "Select",
                        hintStyle: TextStyle(fontSize: 20),
                        iconColor: Colors.black,
                        suffixIcon: Icon(Icons.arrow_downward),
                        enabledBorder: OutlineInputBorder(
                          //<-- SEE HERE
                          borderSide:
                              BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          //<-- SEE HERE
                          borderSide:
                              BorderSide(color: Colors.black, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.greenAccent,
                      ),
                      dropdownColor: Colors.greenAccent,
                      onChanged: (value) {
                        setState(() {});
                      },
                      items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Text Area"),
                  SizedBox(
                    height: 150,
                    width: 260,
                    child: CustomTextField(
                      maxLines: 100,
                      //contentPadding: EdgeInsets.symmetric(vertical: 40),
                      labelText: "Input Text",
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: null,
                      onChanged: null,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Text Field with Adds-on",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15)),
                          TextSpan(
                              text: "*",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 15)),
                        ]),
                      ),
                      Icon(Icons.warning_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Center(
                              child: Text(
                            "Label",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.start,
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.solid),
                              // borderRadius: Border.all()

                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                      SizedBox(
                        width: 150,
                        height: 55,
                        child: CustomTextField(
                          //contentPadding: EdgeInsets.symmetric(vertical: 40),
                          labelText: "Input Text",
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          validator: null,
                          onChanged: null,
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: 95,
                        child: ElevatedButton(
                            onPressed: null, child: Text("Button")),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: CustomTextField(
                          suffixIcon: Icon(Icons.search),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          onChanged: null,
                          labelText: "Search"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                child: Center(
                                    child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                  textAlign: TextAlign.start,
                                )),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(style: BorderStyle.solid),
                                    // borderRadius: Border.all()

                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)))),
                          ),
                          Expanded(
                            child: Container(
                                child: Center(
                                    child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                  textAlign: TextAlign.start,
                                )),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(style: BorderStyle.solid),
                                  // borderRadius: Border.all()
                                )),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                  child: Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                                textAlign: TextAlign.start,
                              )),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(style: BorderStyle.solid),
                                // borderRadius: Border.all()

                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                child: Center(
                                  child: Text(
                                    "Label",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(style: BorderStyle.solid),
                                    // borderRadius: Border.all()

                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)))),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Label",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(style: BorderStyle.solid),
                                // borderRadius: Border.all()

                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                     Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: null,
                          activeColor: Colors.blue,
                        ),
                        Text("CheckBox")
                      ],
                                       ),
                    Row(
                      children: [
                        Radio(value: 0, groupValue: 0, onChanged: null),
                        Text("Radio Button")
                      ],
                    ),
                    Row(
                      children: [
                        Switch(value: false, onChanged: null),
                        Text("Switch")
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
