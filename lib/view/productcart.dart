import 'package:flutter/material.dart';
import 'package:taskapiintegeration/models/productmodel/productmodel.dart';

class ProductCard extends StatelessWidget {
  final Productmodel product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.image.toString()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.title.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                SizedBox(width: 5),
                Text('₹${product.price}', style: TextStyle(fontSize: 16)),
                Spacer(),
                SizedBox(width: 5),
                Text('${product.rating}', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
