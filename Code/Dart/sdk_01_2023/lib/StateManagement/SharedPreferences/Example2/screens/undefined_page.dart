import 'package:flutter/material.dart';

import 'const_style.dart';


class UnDefineRoute extends StatelessWidget {
  const UnDefineRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,       size: 24,
            color: Colors.white,),
        ),
      ),      body: Center(
      child: Text(
         'PAGE NOT FOUND',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
      )
      ),
    ),
    );
  }
}