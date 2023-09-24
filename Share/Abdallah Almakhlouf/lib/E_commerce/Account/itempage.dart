import 'package:flutter/material.dart';
import 'package:last_flutter/E_commerce/Account/userpage.dart';
import 'package:provider/provider.dart';

import '../../item.dart';
import '../../provider/cartt.dart';
import 'cart.dart';
import 'donate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home"),
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
                    trailing: ElevatedButton(
                      onPressed: () {
                        cart.add(item);
                      },
                      child: Icon(Icons.add, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/images.jpeg"),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/img/images.jpeg")),
                  accountEmail: Text("abdullah.com"),
                  accountName: Text("Abdullah",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("", style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.blue.shade300,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DonatePage()),
              );

              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(  // New item for Donate
            icon: Icon(Icons.favorite),
            label: 'Donate',
          ),
        ],
      ),
    );
  }
}
