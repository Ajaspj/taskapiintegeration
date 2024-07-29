part of 'product_bloc.dart';

class ProductState {
  List<Productmodel>? productlist;
  ProductState({required this.productlist});
}

final class ProductInitial extends ProductState {
  ProductInitial({required super.productlist});
}
