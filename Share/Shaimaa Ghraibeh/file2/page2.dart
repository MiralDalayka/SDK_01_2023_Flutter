import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  Color? selectedColor;
  String? selectedSize;

  @override

  Widget build(BuildContext context) {



    return Scaffold(

      body: SingleChildScrollView(

        scrollDirection: Axis.vertical,

        child:
        Column(
          children: [
            Stack(
              children:<Widget> [

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVUzb__vTGwdT2XPp_z76ge8FzCQrh1iHc1Q&usqp=CAU',
                    fit: BoxFit.fill,
                  ),




                ),
                Row(

                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children:   [


                    const Padding(padding: EdgeInsets.only(top: 300)),



                    InkWell(
                      child:  const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black87,
                      ),

                      onTap: (){},
                    ),


                    const SizedBox(
                      width: 320,
                    ),


                    InkWell(
                      child:  const Card(
                        shape: StadiumBorder(),
                        color: Colors.white,
                        child:   Icon(
                          Icons.star_border,
                          color: Colors.black87,
                        ),
                      ),

                      onTap:(){},
                    )

                  ],
                )
              ],


            ),




            const SizedBox(height: 25,),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Nike Dri-FIT Long Sleeve",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Card(
                      shape: const StadiumBorder(side: BorderSide(color: Colors.black, width: 1)),
                      child: Row(
                        children: [
                          SizedBox(width: 40, height: 40),
                          const Text(
                            "Size",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 40, height: 40),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    actions: [
                                      TextButton(onPressed: () => _onSizeSelected("Small"), child: const Text("Small")),
                                      TextButton(onPressed: () => _onSizeSelected("Medium"), child: const Text("Medium")),
                                      TextButton(onPressed: () => _onSizeSelected("XL"), child: const Text("XL")),
                                      TextButton(onPressed: () => _onSizeSelected("XXL"), child: const Text("XXL")),
                                      TextButton(onPressed: () => _onSizeSelected("XXXL"), child: const Text("XXXL")),
                                    ],
                                    titlePadding: const EdgeInsets.only(top: 40, left: 40),
                                    contentPadding: const EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Text(
                              selectedSize ?? "Select Size",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      shape: const StadiumBorder(side: BorderSide(color: Colors.black, width: 1)),
                      child: Row(
                        children: [
                          SizedBox(width: 40, height: 40),
                          const Text(
                            "Color",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 40, height: 40),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    actions: [
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.limeAccent),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.limeAccent,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.red),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.red,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.black),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.black,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.green),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.green,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.cyan),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.deepPurple),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.grey),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.deepOrangeAccent),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.deepOrangeAccent,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => _onColorSelected(Colors.pink),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ],
                                    titlePadding: const EdgeInsets.only(top: 30, left: 30),
                                    contentPadding: const EdgeInsets.all(30),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: 28,
                              height: 28,
                              color: selectedColor ?? Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20, height: 20,),
              ],
            ),
            Wrap(
              children: const [
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  "Nike Dri_FIT is a polyester fabric designed to help you keep dry so you can more comfortably harder, longer. ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 55,),
                Text(
                  "Nike Dri_FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 55,),
                Text(
                  "Nike Dri_FIT is a polyester fabric designed to help you",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
      persistentFooterButtons: [
        Padding(
          padding: EdgeInsets.only(right: 50, top: 10,),
          child: Column(
            children: const [
              Text(
                "Price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "\$1500",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 50,),
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 10,),
          child: Container(
            width: 150, height: 60,
            child: ElevatedButton(
              onPressed: () {setState(() {});},
              child: const Text(
                "ADD",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],


    );







    // scrollDirection: Axis.vertical,
    //
    //   child: Column(
    //     children: [
    //       SizedBox(
    //         width: MediaQuery.of(context).size.width,
    //         child: Image.network(
    //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVUzb__vTGwdT2XPp_z76ge8FzCQrh1iHc1Q&usqp=CAU',
    //           fit: BoxFit.fill,
    //         ),
    //       ),
    //

  }

  void _onColorSelected(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  void _onSizeSelected(String size) {
    setState(() {
      selectedSize = size;
    });
  }
}