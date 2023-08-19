import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_flutter_07_2022/firestore_cloud/example1/post_model.dart';
import 'package:sdk_flutter_07_2022/firestore_cloud/example1/post_provider.dart';
import 'package:uuid/uuid.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final subTitle = TextEditingController();
  final image = TextEditingController();

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
    var postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data'),
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
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Add'),
                    onPressed: () async {
                      // data from cont --> fill model --> send model using prov
                      var id = Uuid().v4();
                      var model = PostModel(
                          subtitle: subTitle.text,
                          date: DateTime.now().toString(),
                          image: image.text,
                          title: title.text,
                          id: id);
                      await postProvider.addPost(model).whenComplete(() {
                        Navigator.of(context).pop();
                      });
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
