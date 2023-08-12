import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/simple_provider_model.dart';

class SimpleProvider extends StatelessWidget {
  const SimpleProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //here
    return ChangeNotifierProvider(
      //don't use Provider with change notifier
      create: (context) => SimpleProviderModel(),
      child: MaterialApp(
          home: Scaffold(
              appBar: AppBar(title: Text('Simple Provider')),
              body: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(),
                  Consumer<SimpleProviderModel>(
                      builder: (context, myModel, child) {
                    return Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        color: myModel.color,
                        child: Text(myModel.txt));
                  }),
                ],
              )))),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<SimpleProviderModel>(context); //back
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 100,
      color: Colors.orange.shade300,
      child: TextButton(
        child: Text("Change"),
        onPressed: () {
          myModel.changeData();
        },
      ),
    );
  }
}
