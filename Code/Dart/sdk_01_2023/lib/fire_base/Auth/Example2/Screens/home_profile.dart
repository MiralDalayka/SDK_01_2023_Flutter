import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Router/router_constant.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/Services/user_service.dart';
import 'package:sdk_flutter_07_2022/Auth/Example2/UserModel.dart';

import '../Services/file_upload_service.dart';
import '../Widgets/massage_dialog.dart';
import '../const_data.dart';

class HomeProfileScreen extends StatefulWidget {
  const HomeProfileScreen({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  _HomeProfileScreenState createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final UserService _userService = UserService();
  final FilesUploadService filesUploadService = FilesUploadService();
  UserModel? _userModel;
  bool showPassword = false;
  File? file;
  ImagePicker imagePicker = ImagePicker();
  String imageURL = '';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _userService.getUser(widget.id),
      builder: (ctx, snapshot) {
        var data = snapshot.data;

        if (data == null) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        _userModel = data as UserModel;
        _name.text = _userModel!.name!;
        _email.text = _userModel!.email!;
        //showPass? _userModel!.password! : '*****'
        _password.text = _userModel!.password!;

        //fill null --> model : url
        //fill not null
        ImageProvider? image = (file == null
            ? NetworkImage(_userModel!.imageURL!.isNotEmpty
                ? _userModel!.imageURL!
                : staticImage)
            : FileImage(file!)) as ImageProvider<Object>;

        return Scaffold(
          appBar: AppBar(
            title: Text('welcome ${_userModel!.name}'),
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          var result = await showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  title: Text('Chose your image option.'),
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SimpleDialogOption(
                                            child: Text(
                                              'Change your image',
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context, true);
                                            },
                                          ),
                                          SimpleDialogOption(
                                            child: Divider(),
                                            onPressed: () {},
                                          ),
                                          SimpleDialogOption(
                                            child: Text(
                                              'View your image',
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context, false);
                                            },
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              });
                          //actions
                          if (result != null) {
                            if (result) {
                              //change image
                              await chooseImage();
                              if (file != null) {
                                imageURL = await filesUploadService
                                    .fileUpload(file!, 'UserProfileImage')
                                    .whenComplete(() {
                                  log("User Image Changed");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "Your Profile Image is changed")));
                                });
                              }
                            } else {
                              //view image

                              Navigator.of(context).pushNamed(imageViewer,
                                  arguments: _userModel!.imageURL!.isNotEmpty
                                      ? _userModel!.imageURL!
                                      : staticImage);
                            }
                          }
                        },
                        child: CircleAvatar(
                          //image
                          backgroundImage: image,
                          maxRadius: 50,
                          minRadius: 25,
                        ),
                      ),
                      TextButton(
                        child: Text('Update'),
                        onPressed: () async {
                          if (imageURL!.isNotEmpty) {
                            _userModel!.imageURL = imageURL;
                            await _userService
                                .updateUser(widget.id, _userModel!)
                                .whenComplete(() {
                              simpleDialogToUse(context, 'Image Updated');
                            });
                          }
                        },
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextFormField(
                    controller: _name,
                    maxLines: 1,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Name',
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        )),
                    validator: (value) =>
                        value!.isEmpty ? 'Name can\'t be empty' : null,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextFormField(
                    enabled: false,
                    controller: _email,
                    maxLines: 1,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        )),
                    validator: (value) =>
                        value!.isEmpty ? 'Email can\'t be empty' : null,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextFormField(
                    controller: _password,
                    maxLines: 1,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        )),
                    validator: (value) =>
                        value!.isEmpty ? 'Email can\'t be empty' : null,
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Update'),
                onPressed: () async {
                  var model = UserModel(
                      uid: widget.id,
                      loginState: _userModel!.loginState,
                      imageURL: _userModel!.imageURL,
                      password: _password.text,
                      email: _email.text,
                      name: _name.text);
                  await _userService
                      .updateUser(widget.id, model)
                      .whenComplete(() {
                    simpleDialogToUse(context, 'Data Updated');
                  });
                },
              )
            ],
          ),
        );
      },
    );
  }

  chooseImage() async {
    final pickedImage = await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedImage!.path.isEmpty) {
      //lost data : old data
      retrieveLostData();
    } else {
      setState(() {
        file = File(pickedImage.path);
      });
    }
  }

  Future<void> retrieveLostData() async {
    final LostData result = await imagePicker.getLostData();
    if (result.file == null) {
      log("Null LOST DATA");
    } else {
      setState(() {
        file = File(result.file!.path);
      });
    }
  }
}
