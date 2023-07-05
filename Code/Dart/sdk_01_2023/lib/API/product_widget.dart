import 'package:flutter/material.dart';
import 'package:miral_flutter_01_2023/SDK_01_2023/API/product_model.dart';


class ProductItemView extends StatelessWidget {
  const ProductItemView({Key? key, required this.model, required this.onTab})
      : super(key: key);
  final ProductModel model;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          children: [
            Hero(
              tag: 'category${model.id}',
              child: SizedBox(
                height: 100,
                child: Image.network(
                  model.picture!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(model.name!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:Colors.black)),
                Text(
                  model.brandName!.length > 20
                      ? model.brandName!.substring(0, 20)
                      : model.brandName!,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '${model.price}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}