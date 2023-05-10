import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.tag_faces,
              color: Colors.amber,
              size: 50,
              semanticLabel: 'smile face',
            ),
            Icon(
              Icons.home,
              color: Colors.black,
              size: 50,
            ),
            Icon(
              Icons.image,
              color: Colors.blue,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
