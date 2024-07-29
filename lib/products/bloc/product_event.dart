part of 'product_bloc.dart';

abstract class ProductEvent {}

class LoadProducts extends ProductEvent {
  List<Object> get props => [];
}
