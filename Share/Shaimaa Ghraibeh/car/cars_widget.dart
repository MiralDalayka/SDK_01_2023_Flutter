import 'package:flutter/material.dart';
import 'package:scaffolddw/car/car_model.dart';
class CarWidget extends StatefulWidget {
  const CarWidget({Key? key, required this.model}) : super(key: key);

final Car_Model model;

  @override
  State<CarWidget> createState() => _CarWidgetState();
}

class _CarWidgetState extends State<CarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Text(widget.model.carMake.toString()),
          Text(widget.model.carColor.toString()),
          Text(widget.model.carVin.toString()),
          Text(widget.model.carModel.toString()),
          Text(widget.model.carModelYear!.toString()),



        ],
      ),
    );
  }
}
