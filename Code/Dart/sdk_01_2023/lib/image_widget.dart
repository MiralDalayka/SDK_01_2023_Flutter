import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images With Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              width: 500,
              height: 500,
              child: Image.asset(
                'assets/flutter_logo.jpg',
                // height: 100,
                // width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Image.network(
              'https://miro.medium.com/v2/resize:fit:1400/1*yvz6FsBEh-JGN_miQIMEXA.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
