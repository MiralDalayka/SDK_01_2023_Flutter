import 'package:flutter/material.dart';
import 'package:last_flutter/E_commerce/Account/userpage.dart';
import 'package:provider/provider.dart';
import '../../provider/cartt.dart';
import '../../provider/pymant.dart';
import 'donate.dart';
import 'itempage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Checkout Screen"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: cart.selectedProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      cart.selectedProducts[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "${cart.selectedProducts[index].price} - ${cart.selectedProducts[index].location}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(cart.selectedProducts[index].imgPath),
                      radius: 30,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        cart.delete(cart.selectedProducts[index]);
                      },
                      icon: Icon(Icons.remove, color: Colors.red),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()), // Assuming you've created PaymentPage
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Pay \$${cart.price}",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
