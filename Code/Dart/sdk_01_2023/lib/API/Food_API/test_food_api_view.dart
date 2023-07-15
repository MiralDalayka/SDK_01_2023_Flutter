import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/Food_API/food_model.dart';

import 'food_service.dart';

class TestFoodApi extends StatefulWidget {
  const TestFoodApi({Key? key,required this.recipeName}) : super(key: key);
final String recipeName;
  @override
  State<TestFoodApi> createState() => _TestFoodApiState();
}

class _TestFoodApiState extends State<TestFoodApi> {
  RecipeModel? model;

  @override
  Widget build(BuildContext context) {
    FoodService _service = FoodService(widget.recipeName);

    return Scaffold(
      body: FutureBuilder(
        future: _service.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            model = snapshot.data as RecipeModel;
            return Text("DATA:\n${model!.name}\n${model!.description}");

          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
