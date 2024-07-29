import 'package:flutter/material.dart';
import 'package:taskapiintegeration/models/productmodel/productmodel.dart';

class ProductCard extends StatelessWidget {
  final Productmodel product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.image.toString(),
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.title.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                SizedBox(width: 5),
                Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: Center(
                      child: Text('₹${product.price}',
                          style: TextStyle(fontSize: 16)),
                    )),
                Spacer(),
                SizedBox(width: 5),
                Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: Center(
                      child: Text('${product.category}',
                          style: TextStyle(fontSize: 16)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
