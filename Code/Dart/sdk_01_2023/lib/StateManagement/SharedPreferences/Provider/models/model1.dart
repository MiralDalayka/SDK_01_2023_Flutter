import 'dart:developer';

import 'package:flutter/material.dart';

class Model1 extends ChangeNotifier{    //            <--- MyModel

  String txt = 'Hello';
  Color color=Colors.green.shade300;

  void changeData() {
    log("I'm in change Data Model 1");

    txt = 'Goodbye';
    color = Colors.pink.shade300;
    notifyListeners();

  }
}