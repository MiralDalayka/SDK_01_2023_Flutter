import 'package:flutter/material.dart';

import '../../item.dart';

class GuestHome extends StatelessWidget {
  const GuestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home - Guest View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      item.imgPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text(item.name),
                    subtitle: Text("\$${item.price.toStringAsFixed(2)}"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
