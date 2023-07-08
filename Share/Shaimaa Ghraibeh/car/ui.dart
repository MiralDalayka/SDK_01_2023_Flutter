import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:scaffolddw/car/car_model.dart';
import 'package:scaffolddw/car/service.dart';

import 'car_model.dart';
import 'cars_widget.dart';

class CarsView extends StatefulWidget {
  const CarsView({Key? key}) : super(key: key);

  @override
  State<CarsView> createState() => _CarsViewState();
}

class _CarsViewState extends State<CarsView> {
  CarsService _service = CarsService();
  CarsList? carsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: StreamBuilder(
        stream: _service.getData().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            carsList = snapshot.data as CarsList;
            log(carsList!.cars[0].carColor.toString());
            if (carsList!.cars.isNotEmpty) {
              return Container(
                height: 50,
                width: 50,
                child: GridView.builder(
                    itemCount: carsList!.cars.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return CarWidget(
                        model: carsList!.cars[index],
                      );
                    }),
              );
            }
            return Center(child: Text("No Products yet"));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
