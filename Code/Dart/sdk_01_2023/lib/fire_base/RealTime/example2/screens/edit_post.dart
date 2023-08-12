import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_model.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_provider.dart';
import 'package:uuid/uuid.dart';

class EditPostScreen extends StatefulWidget {
  const EditPostScreen({Key? key, required this.postId}) : super(key: key);
  final String postId;

  @override
  _EditPostScreenState createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> {
  final formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final subTitle = TextEditingController();
  final image = TextEditingController();
  final date = TextEditingController();
  PostModel? model;

  InputDecoration decoration(String label, String hint) {
    return InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ));
  }

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    model = postProvider.getPostById(widget.postId);
    title.text= model!.title!;
    image.text = model!.image!;
    subTitle.text = model!.subtitle!;
    date.text = model!.date!;
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFieldItem(
                controller: title,
                decoration: decoration('Title', 'Enter Title'),
              ),
              TextFieldItem(
                controller: subTitle,
                decoration: decoration('SubTitle', 'Enter subTitle'),
              ),
              TextFieldItem(
                controller: image,
                decoration: decoration('Image', 'Enter image'),
              ),
              TextFieldItem(
                controller: date,
                decoration: decoration('Date', 'Enter date'),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Save'),
                    onPressed: () async {
                      var model = PostModel(
                          id: widget.postId,
                          date: date.text,
                          image: image.text,
                          subtitle: subTitle.text,
                          title: title.text);
                      await postProvider
                          .updatePost(widget.postId, model)
                          .whenComplete(() {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text('delete'),
                    onPressed: () async {
                      await postProvider
                          .deletePost(widget.postId)
                          .whenComplete(() => Navigator.of(context).pop());
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldItem extends StatelessWidget {
  const TextFieldItem(
      {Key? key, required this.controller, required this.decoration})
      : super(key: key);
  final TextEditingController controller;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextFormField(
        controller: controller,
        decoration: decoration,
      ),
    );
  }
}
