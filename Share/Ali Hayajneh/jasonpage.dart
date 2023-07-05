// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jasonist/jason_controller.dart';
import 'package:jasonist/jason_model.dart';

class JasonPage extends StatefulWidget {
  const JasonPage({super.key});

  @override
  State<JasonPage> createState() => _JasonPageState();
}

class _JasonPageState extends State<JasonPage> {
  List<JasonInfo> page = [];
  JasonController controller = JasonController();

  void converter() async {
    page = await controller.loadModel();
  }

  @override
  void initState() {
    super.initState();
    converter();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
        future: controller.loadModel(),
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return ListView.builder(
              itemCount: snapShot.data!.length,
              itemBuilder: (context,index) {
                return ListTile(
                  leading: Text(snapShot.data![index].id!),
                  subtitle: Text(snapShot.data![index].city!),
                  trailing: Text(snapShot.data![index].age.toString()),
                );
              },
            );
          } else if (snapShot.hasError) {
            return Text("ERROR");
          } else {
            return CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
