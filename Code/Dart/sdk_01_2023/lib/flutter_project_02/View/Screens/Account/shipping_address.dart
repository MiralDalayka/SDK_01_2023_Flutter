import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  String? con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Shipping Address",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text(
                "Home Address",
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                  "21, Alex Davidson Avenue, Opposite  Omegatron, Vicent Smith Quarters, Victoria  Island, Lagos, Nigeria "),
              value: "A",
              groupValue: con,
              onChanged: (String? val) {
                setState(() {
                  con = val;
                });
              }),
          RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text(
                "Work Address ",
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                  "19, Martins Crescent, Bank of Nigeria, Abuja,  Nigeria"),
              value: "B",
              groupValue: con,
              onChanged: (String? val) {
                setState(() {
                  con = val;
                });
              }),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 180,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ),



        ],


      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),

    );
  }
}