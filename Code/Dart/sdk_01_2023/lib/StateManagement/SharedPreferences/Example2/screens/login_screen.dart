import 'package:flutter/material.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/Service/user_sevice.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/button_widget.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/password_text_field_widget.dart';
import 'package:flutter_1_2023/StateManagement/SharedPreferences/Example2/screens/widgets/text_field_widget.dart';

import '../Service/shared_prefs_main_class.dart';
import '../navigations/constant_route.dart';
import 'const_style.dart';

class SharedPrefsLogInPage extends StatefulWidget {
  @override
  _SharedPrefsLogInPageState createState() => _SharedPrefsLogInPageState();
}

class _SharedPrefsLogInPageState extends State<SharedPrefsLogInPage> {
  bool isPasswordVisible = true;
  final email = TextEditingController();
  final password = TextEditingController();
  UserService _service = UserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      appBar: AppBar(
        backgroundColor: cBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back.",
                            style: cHeadline,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "You've been missed!",
                            style: cBodyText2,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          MyTextField(
                            controller: email,
                            hintText: 'Email',
                            inputType: TextInputType.text,
                          ),
                          MyPasswordField(
                            controller: password,
                            isPasswordVisible: isPasswordVisible,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: cBodyText,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: InkWell(
                            child: Text(
                              'Register',
                              style: cBodyText.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(signUpPageRoute);
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: MyTextButton(
                        buttonName: 'Sign In',
                        bgColor: Colors.white,
                        textColor: Colors.black87,
                        onTap: () {
                          var model =
                              _service.signIn(email.text, password.text);
                          var id = model.id;
                          if (id == '-2') {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("You don't have account")));
                          }else
                            if(id=='-1')
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text("Wrong password")));
                              }
                            else
                              {
                                Prefs.setBool('logInState', true);
                                //nav
                                Navigator.of(context).popAndPushNamed(homePageRouteShared,arguments: model);
                              }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
