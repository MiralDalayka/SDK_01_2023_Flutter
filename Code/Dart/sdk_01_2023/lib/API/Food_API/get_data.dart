import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/Food_API/test_food_api_view.dart';

class GetData extends StatefulWidget {
  const GetData({Key? key}) : super(key: key);

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController recipeName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: recipeName,
                  decoration: InputDecoration(
                      //borders
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 5)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.green, width: 5)),

                      //text:
                      labelText: 'Recipe Name',
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      hintText: 'cake',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
                  validator: (input) {
                    if (input!.isEmpty) {
                      return "Can't be empty";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        log('Done');

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => TestFoodApi(
                                  recipeName: recipeName.text,
                                )));
                      } else {
                        log("failed");
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xCDb0aabf),
                  ),
                  child: Text('Get recipe'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
