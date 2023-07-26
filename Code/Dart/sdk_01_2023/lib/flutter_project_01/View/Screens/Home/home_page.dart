import 'package:flutter/material.dart';


import '../../../Utili/export_files.dart';


class ProductMainPage extends StatefulWidget {
  const ProductMainPage({key});

  @override
  State<ProductMainPage> createState() => _ProductMainPageState();
}

class _ProductMainPageState extends State<ProductMainPage> {
  int currentIndex = 0;

  var tempItemList = itemModelList;

  TextEditingController controller = TextEditingController();

  var cartController = CartController();
  var funnelColor = Colors.black;
  var itemsExisted = cartModelList.length;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          return FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              title: Text(
                cartModelList.length.toString(),
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              centerTitle: true,
            ),
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  if (value == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cart(
                                  cartController: cartController,
                                  mycontext: context,
                                )));
                  }
                });
                // Respond to item press.
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Icon(Icons.explore),
                ),
                BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: Icon(Icons.favorite),
                ),
                BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Icon(Icons.shopping_cart),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            body: Container(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade400),
                      child: Column(children: [
                        TextFormField(
                          controller: controller,
                          onChanged: (text) {
                            if (text == "") {
                              tempItemList = itemModelList;
                              funnelColor = Colors.black;
                            } else {
                              tempItemList = itemModelList.where(
                                (element) {
                                  return element.itemName
                                      .toLowerCase()
                                      .startsWith(text.toLowerCase());
                                },
                              ).toList();
                            }
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  controller.text = "";
                                  tempItemList = itemModelList;
                                  funnelColor = Colors.black;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.cancel,
                                  color: Colors.black,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              )),
                        ),
                      ])),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    color: Colors.amber,
                    child: ListView.separated(
                      itemCount: categoryModelList.length,
                      separatorBuilder: (context, index) {
                        return Container(
                          width: 5,
                          color: Colors.grey,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.text = "";
                            funnelColor = Colors.red;

                            tempItemList = itemModelList
                                .where((element) =>
                                    element.catId ==
                                    categoryModelList[index].catId)
                                .toList();

                            setState(() {});
                          },
                          child: Container(
                            color: Colors.black,
                            height: 10,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          categoryModelList[index].catImage),
                                      repeat: ImageRepeat.repeat,
                                      fit: BoxFit.cover,
                                    ))),
                                FittedBox(
                                    fit: BoxFit.contain,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        categoryModelList[index].catName,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best selling",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {
                          funnelColor = Colors.black;
                          tempItemList = itemModelList;
                          controller.text = "";
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.filter_alt,
                          color: funnelColor,
                          size: 40,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      height: 00,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return Container(
                            color: Colors.black,
                            width: 2,
                          );
                        },
                        itemCount: tempItemList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              //cartModelList
                              cartController
                                  .addToCart(tempItemList[index].itemId);
                              setState(() {});

                              print(cartController.sumTotal());
                            },
                            child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        style: BorderStyle.solid, width: 1)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        tempItemList[index].itemImage,
                                        width: 100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          FittedBox(
                                              fit: BoxFit.contain,
                                              child: Text(
                                                  tempItemList[index].itemName,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      TextStyle(fontSize: 20))),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(tempItemList[index].itemMark,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey.shade700)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 13,
                                          ),
                                          Text(
                                              "${tempItemList[index].itemPrice} JD",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color:
                                                      Colors.green.shade700)),
                                        ],
                                      )
                                    ])),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
