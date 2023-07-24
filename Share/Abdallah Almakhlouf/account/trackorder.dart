import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track Order',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TrackOrder(),
    );
  }
}

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          MyBox(
            orderNumber: "OD - 424923192 - N",
            productName: "Product Name 1",
            productImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPok3n1gG-rbg6ZvwcqQdW9VuYXNoP1QlFw&usqp=CAU",
            orderStatus: "In Progress",
            price: 19.99,
          ),
          SizedBox(height: 10),
          MyBox(
            orderNumber: "OD - 123456789 - N",
            productName: "Product Name 2",
            productImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPok3n1gG-rbg6ZvwcqQdW9VuYXNoP1QlFw&usqp=CAU",
            orderStatus: "Delivered",
            price: 29.99,
          ),
          SizedBox(height: 10),
          MyBox(
            orderNumber: "OD - 987654321 - N",
            productName: "Product Name 3",
            productImageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPok3n1gG-rbg6ZvwcqQdW9VuYXNoP1QlFw&usqp=CAU",
            orderStatus: "Pending",
            price: 9.99,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final String orderNumber;
  final String productName;
  final String productImageURL;
  final String orderStatus;
  final double price;

  const MyBox({
    required this.orderNumber,
    required this.productName,
    required this.productImageURL,
    required this.orderStatus,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 200,
      padding: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(orderNumber, style: TextStyle(color: Colors.black)),
                    SizedBox(height: 10),
                    Text(productName, style: TextStyle(color: Colors.black)),
                    SizedBox(height: 5),
                    Text('\$$price', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(productImageURL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(orderStatus, style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}