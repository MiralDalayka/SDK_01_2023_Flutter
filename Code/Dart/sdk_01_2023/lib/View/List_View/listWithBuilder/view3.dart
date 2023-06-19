import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/View/List_View/test_data/test_list.dart';

import '../Components/my_box.dart';


class View3 extends StatefulWidget {
  const View3({Key? key}) : super(key: key);

  @override
  State<View3> createState() => _View3State();
}

class _View3State extends State<View3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 3"),
      ),
      body: ListView.builder(
        itemCount: boxData.length,//20
        itemBuilder: (BuildContext context, int index) {
          return MyBox(
            counter: boxData[index],//20
          );
        },
      ),
    );
  }
}
