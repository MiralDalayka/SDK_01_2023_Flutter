import 'package:flutter/material.dart';
import 'package:last_flutter/E_commerce/Account/userpage.dart';

import 'cart.dart';
import 'gustview.dart';
import 'itempage.dart';

class GuestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU",
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(child: Text("Guest", style: TextStyle(fontSize: 24))),
          SizedBox(height: 20),
          ProfileOption("Shop", Icons.shopping_bag, () {
            // Navigate to shop
          }),
          ProfileOption("Log In", Icons.login, () {
            // Navigate to login page
          }),
          ProfileOption("Sign Up", Icons.app_registration, () {
            // Navigate to registration page
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ProfilePage()), // navigate to the original profile page
              // );
              break;
            // case 1:
            //   // Navigator.push(
            //   //   context,
            //   //   MaterialPageRoute(builder: (context) => CartPage()),
            //   // );
            //   break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GuestHome()), // navigate to home
              );
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shopping_cart),
          //   label: 'Shopping',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
