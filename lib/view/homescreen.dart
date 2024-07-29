import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskapiintegeration/products/bloc/product_bloc.dart';
import 'package:taskapiintegeration/view/productcart.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductInitial && state.productlist!.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else if (state.productlist!.isNotEmpty) {
            return ListView.builder(
              itemCount: state.productlist!.length,
              itemBuilder: (context, index) {
                final product = state.productlist![index];
                return ProductCard(product: product);
              },
            );
          } else {
            return Center(child: Text('Failed to load products'));
          }
        },
      ),
    );
  }
}
