import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/View/List_View/test_data/test_list.dart';

import 'Components/myBoxH.dart';


class View4 extends StatefulWidget {
  const View4({Key? key}) : super(key: key);

  @override
  State<View4> createState() => _View4State();
}

class _View4State extends State<View4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 4"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: boxData.length,//20
        itemBuilder: (BuildContext context, int index) {
          return MyBoxH(
            counter: boxData[index],//20
          );
        },
      ),
    );
  }
}
