part of 'product_bloc.dart';

class ProductState {
  List<Productmodel>? productlist;
  ProductState({required this.productlist});
}

final class Getproducts extends ProductState {
  Getproducts({required super.productlist});
}
