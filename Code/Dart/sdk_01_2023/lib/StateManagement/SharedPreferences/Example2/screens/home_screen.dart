import 'package:flutter/material.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/const_style.dart';

import '../Model/user_model.dart';
import '../Service/shared_prefs_main_class.dart';
import '../navigations/constant_route.dart';

class SharedPrefsHomePage extends StatefulWidget {
  const SharedPrefsHomePage({Key? key, required this.model}) : super(key: key);
final UserModel model;
  @override
  State<SharedPrefsHomePage> createState() => _SharedPrefsHomePageState();
}

class _SharedPrefsHomePageState extends State<SharedPrefsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      appBar: AppBar(
        backgroundColor: cBackgroundColor,
        title: Text(
            'Welcome ${widget.model.name}'),
        actions: [
          TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
              Colors.white,
            )),
            onPressed: () {

              Prefs.setBool('logInState', false);
              Navigator.of(context).popAndPushNamed(splashScreen);

            },
            child: Text('Logout'),
          )
        ],
       automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'id : ${widget.model.id}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'name : ${widget.model.name}',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'email : ${widget.model.email}',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'address : ${widget.model.address}',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'password : ${widget.model.password}',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
