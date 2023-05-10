import 'dart:developer';

import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                log('click');
              },
              child: Text(
                'TextButton - Enabled',
                style: Theme.of(context).textTheme.headline5,
              ),
              onLongPress: () {
                print('long click');
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all(20),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
                  shadowColor: MaterialStateProperty.all(Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}
