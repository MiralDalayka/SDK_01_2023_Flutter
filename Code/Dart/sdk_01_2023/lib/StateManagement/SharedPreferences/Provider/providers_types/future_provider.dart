import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/future_provider_model.dart';

class FutureProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureProvider<FutureProviderModel>(
      //           <--- FutureProvider
      initialData:
          FutureProviderModel(txt: "Waiting", color: Colors.yellow.shade300),
      create: (context) => someAsyncFunctionToGetFutureProviderModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Future Provider')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green[200],
                  child: MyButton()),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<FutureProviderModel>(
                  //                    <--- Consumer
                  builder: (context, FutureProviderModel, child) {
                    return Text(FutureProviderModel.txt!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<FutureProviderModel> someAsyncFunctionToGetFutureProviderModel() async {
  //  <--- async function
  await Future.delayed(Duration(seconds: 3));
  log('Access here');
  return FutureProviderModel();
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final futureProviderModel =
        Provider.of<FutureProviderModel>(context, listen: false);
    return TextButton(
      child: Text('Do something'),
      onPressed: () async {
        await futureProviderModel.changeData();
      },
    );
  }
}
