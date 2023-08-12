import 'dart:developer';

import 'package:flutter/material.dart';

class SimpleProviderModel extends ChangeNotifier{    //            <--- MyModel

  String txt = 'Hello';
  Color color=Colors.green.shade300;

  void changeData() {
    log("I'm in change Data function");
    txt = 'Goodbye';
    color = Colors.pink.shade300;
    notifyListeners();

  }
}