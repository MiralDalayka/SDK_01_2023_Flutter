import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/View/List_View/test_data/test_list.dart';


class View2 extends StatefulWidget {
  const View2({Key? key}) : super(key: key);

  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 2"),
      ),
      body: ListView.builder(
        itemCount: myBoxs.length,
        itemBuilder: (BuildContext context, int index) {
          return myBoxs[index];
        },
      ),
    );
  }
}
