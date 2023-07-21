import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("David Spade", style: TextStyle(fontSize: 20)),
                    Text("iamdavid@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ProfileOption("Edit", Icons.edit, () {}),
          ProfileOption("Shipping", Icons.local_shipping, () {}),
          ProfileOption("Order", Icons.shopping_cart, () {}),
          ProfileOption("Cards", Icons.credit_card, () {}),
          ProfileOption("Notifications", Icons.notifications, () {}),
          ProfileOption("Log Out", Icons.logout, () {}),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  ProfileOption(this.text, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}