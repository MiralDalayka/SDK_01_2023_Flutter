import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/View/List_View/test_data/test_list.dart';

class View5 extends StatefulWidget {
  const View5({Key? key}) : super(key: key);

  @override
  State<View5> createState() => _View5State();
}

class _View5State extends State<View5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View 5"),
      ),
      body: ListView.separated(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return myBoxs[index];
        },
        separatorBuilder: (BuildContext context, int index) {

          return Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Color(colorsList[index]),
          );
        },
      ),
    );
  }
}
