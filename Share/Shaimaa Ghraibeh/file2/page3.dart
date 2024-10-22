import 'package:flutter/material.dart';


class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {



  final List<Map<String, dynamic>> products = [
    {
      "name": "BeoPlay Speaker",
      "price": 799,
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4uJYv8-Q6XOiSPHXM2YsDHODq-30u89Xe2w&usqp=CAU",
    },

    {
      "name": "desk chai",
      "price": 450,
      "image":
      "https://cdn.shopify.com/s/files/1/0627/5517/products/ChronoS40mmSilver_Tan_540x.jpg?v=1686697214",
    },


    {
      "name": "Table Lamp",
      "price": 400,
      "image":
      "data:image/png;base64,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",
    },

    {
      "name": "Table",
      "price": 450,
      "image":
      "data:image/jpeg;base64,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",
    },

    {
      "name": "TV",
      "price": 1200,
      "image":
      "data:image/jpeg;base64,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",


    },


  ];











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  AppBar(
      //   title: Text(""),
      //   backgroundColor: Colors.white,
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

      floatingActionButton:FloatingActionButton.extended(
        backgroundColor: Colors.white,

        onPressed: () {

        },

        icon:const Icon(Icons.arrow_back_ios_outlined , color: Colors.black,),
        label:  Container(
          color: Colors.white,

        ) ,

      ),


      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: const Text("Men" , style: TextStyle(
              //  fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            ),







            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Wrap(
                children: products.map((product) {
                  return SizedBox(
                    width: 150,
                    child: Card(
                      color: Colors.grey[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            product["image"],
                            height: 180,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            product["name"],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "${product["price"]} \$",
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],

        ),
      ),


















    );
  }
}