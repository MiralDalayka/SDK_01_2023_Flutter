import 'dart:developer';

import 'package:flutter/material.dart';

class Model2 extends ChangeNotifier{    //            <--- MyModel

  IconData icon = Icons.ac_unit;

  void changeData() {
    log("I'm in change Data Model 2");
    icon = Icons.access_alarm;
    notifyListeners();

  }
}