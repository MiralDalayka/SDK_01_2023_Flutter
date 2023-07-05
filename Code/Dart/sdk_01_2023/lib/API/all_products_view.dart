import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/product_model.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/product_widget.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/products_service.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ProductService _service = ProductService();
  ProductsList? productsListObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: StreamBuilder(
        stream: _service.getData().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            productsListObject = snapshot.data as ProductsList;
            if (productsListObject!.products!.isNotEmpty) {
              return GridView.builder(
                  itemCount: productsListObject!.products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return ProductItemView(
                      model: productsListObject!.products[index],
                      onTab: () {},
                    );
                  });
            }
            return Center(child: Text("No Products yet"));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
