import 'package:flutter/material.dart';

import 'SDK_01_2023/first_app.dart';
import 'SDK_01_2023/rich_text_page.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RichTextClass(),
    );
  }
}
