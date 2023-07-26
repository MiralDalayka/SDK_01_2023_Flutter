// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../Utili/export_files.dart';
bool isFavorite = false;
List<ItemModel> filteredItemList = [];
List<int> selectedItemId = [];
bool selectedFavorite = false;

class Cart extends StatefulWidget {
  final CartController cartController;
  final BuildContext mycontext;
  const Cart({
    Key? key,
    required this.cartController,
    required this.mycontext,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var favoriteModelController = FavoriteModelController();

  @override
  Widget build(BuildContext context) {
    filteredItemList.clear();
    for (int x = 0; x < cartModelList.length; x++) {
      for (int y = 0; y < itemModelList.length; y++) {
        if (cartModelList[x].itemId == itemModelList[y].itemId) {
          filteredItemList.add(itemModelList[y]);
        }
      }
    }

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purpleAccent,
              title: Text("Cart"),
              centerTitle: true,
            ),
            body: Column(children: [
              Expanded(
                  flex: 5,
                  child: Container(
                      color: Colors.amber,
                      child: ListView.separated(
                        itemCount: filteredItemList.length,
                        separatorBuilder: (context, index) {
                          return Container(
                            height: 5,
                            color: Colors.grey,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Slidable(
                            key: const ValueKey(0),

                            // The start action pane is the one at the left or the top side.
                            startActionPane: ActionPane(
                              // A motion is a widget used to control how the pane animates.
                              motion: const ScrollMotion(),

                              // A pane can dismiss the Slidable.

                              // All actions are defined in the children parameter.
                              children: [
                                // A SlidableAction can have an icon and/or a label.
                                SlidableAction(
                                  onPressed: (context) {
                                    favoriteModelController.addRemoveFavorite(
                                        filteredItemList[index].itemId);

                                    isFavorite = favoriteModelController
                                        .checkTheExistenceOfItemInFavorite(
                                            filteredItemList[index].itemId);

                                    print(favoriteList.length);


                                       if (isFavorite == true) {
                                      selectedItemId
                                          .add(filteredItemList[index].itemId);
                                    } else {
                                      selectedItemId.remove(
                                          filteredItemList[index].itemId);
                                    }

                                    setState(() {
                                   
                                    });
                                  },
                                  backgroundColor: Colors.yellow,
                                  foregroundColor:
                                      selectedItemId.contains(
                                          filteredItemList[index].itemId)
                                          ? Colors.red
                                          : Colors.white,
                                  icon: Icons.star,
                                  label: 'Favorite',
                                ),
                              ],
                            ),

                            // The end action pane is the one at the right or the bottom side.
                            endActionPane: ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                SlidableAction(
                                  // An action can be bigger than the others.
                                  flex: 2,
                                  onPressed: (context) {
                                    widget.cartController.removeFromCart(
                                        cartModelList[index].itemId);

                                    setState(() {});
                                  },
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: Container(
                                height: 100,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              filteredItemList[index]
                                                  .itemImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredItemList[index].itemName,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          "${filteredItemList[index].itemPrice} JD",
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 20),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 100,
                                          color: Colors.grey.shade300,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    widget.cartController
                                                        .increaseQuantity(
                                                            cartModelList[index]
                                                                .itemId);

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: FittedBox(
                                                    fit: BoxFit.fill,
                                                    child: Text(
                                                      cartModelList[index]
                                                          .quantity
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Container(
                                                    height: 70,
                                                    padding: EdgeInsets.only(
                                                        bottom: 17, left: 10),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        if (cartModelList[index]
                                                                .quantity >
                                                            1) {
                                                          widget.cartController
                                                              .decreaseQuantity(
                                                                  cartModelList[
                                                                          index]
                                                                      .itemId);

                                                          setState(() {});
                                                        }
                                                      },
                                                      child: Icon(
                                                        Icons.minimize_sharp,
                                                        color: Colors.red,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    FittedBox(
                                      fit:BoxFit.contain,
                                      child: Text(
                                        "${cartModelList[index].itemTotalPrice.toStringAsFixed(2)} JD",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.red),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        },
                      ))),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              FittedBox(
                                fit:BoxFit.fill,
                                child: Text(
                                  "Total",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              FittedBox(
                                fit:BoxFit.fill,
                                child: Text(
                                  "${widget.cartController.sumTotal().toStringAsFixed(2)} JD",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.greenAccent),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 70,
                              width: 200,
                              color: Colors.green,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Center(
                                child: const Text(
                                  'Check Out',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ])));
  }
}
