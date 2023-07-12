import 'package:flutter/material.dart';
import 'package:untitled/ExternalApi/service.dart';

import 'Daily_model.dart';

class TestAPI extends StatefulWidget {
  const TestAPI({super.key});

  @override
  State<TestAPI> createState() => _TestAPIState();
}

class _TestAPIState extends State<TestAPI> {
  DailyService service = DailyService();
  DailyModel? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: service.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            data = snapshot.data as DailyModel;
            return Center(
              child: Text("Test Api\n${data!.name}\n${data!.atomicMass}\n${data!.group}"),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
