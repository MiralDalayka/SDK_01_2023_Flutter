import 'package:flutter/material.dart';

import 'api2_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.model}) : super(key: key);
  final Co2 model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        color: Colors.green.shade200,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${model.year}--${model.cycle}--${model.day}--${model.trend}--${model.month}",style: TextStyle(
              fontSize: 14
            ),)
          ],
        ),
      ),
    );
  }
}
