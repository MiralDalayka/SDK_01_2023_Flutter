import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/model1.dart';
import '../models/model2.dart';
class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Multi Provider Test')),
        body: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton1(),
                    Consumer<Model1>(builder: (context, myModel, child) {
                      return Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 100,
                          color: myModel.color,
                          child: Text(myModel.txt));
                    }),
                  ],
                ),
                Divider(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton2(),
                    Consumer<Model2>(builder: (context, myModel, child) {
                      return Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 100,
                          color: Colors.blue.shade50,
                          child: Icon(myModel.icon));
                    }),
                  ],
                )
              ],
            )));
  }
}

class MyButton1 extends StatelessWidget {
  const MyButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<Model1>(context); //back
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 100,
      color: Colors.orange.shade300,
      child: TextButton(
        child: Text("Change model 1"),
        onPressed: () {
          myModel.changeData();
        },
      ),
    );
  }
}
class MyButton2 extends StatelessWidget {
  const MyButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<Model2>(context); //back
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 100,
      color: Colors.orange.shade300,
      child: TextButton(
        child: Text("Change Model 2"),
        onPressed: () {
          myModel.changeData();
        },
      ),
    );
  }
}
