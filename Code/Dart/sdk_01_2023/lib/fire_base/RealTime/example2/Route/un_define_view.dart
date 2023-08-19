import 'package:flutter/material.dart';

class UnDefineView extends StatelessWidget {
  const UnDefineView({Key? key, required this.routeName}) : super(key: key);
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Text(
          routeName,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
