import 'dart:developer';

import 'package:flutter/material.dart';

class FutureProviderModel extends ChangeNotifier {
  //            <--- MyModel

  String? txt ;
  Color? color;

  FutureProviderModel({this.txt, this.color});

  Future<void> changeData() async {
    await Future.delayed(Duration(seconds: 2));
    log("I'm in change Data function");
    txt = 'Goodbye';
    color = Colors.pink.shade300;
    notifyListeners();
  }
}
