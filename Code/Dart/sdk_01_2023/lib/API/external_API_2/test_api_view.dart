import 'package:flutter/material.dart';

import 'api2_model.dart';
import 'api2_service.dart';
import 'card_widget.dart';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  DailyService _service = DailyService();
  Co2Model? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _service.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            model = snapshot.data as Co2Model;
            return ListView.builder(
                itemCount: model!.co2!.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    model: model!.co2![index],
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
