import 'package:bloc/bloc.dart';
import 'package:taskapiintegeration/api/apiresponse.dart';
import 'package:taskapiintegeration/models/productmodel/productmodel.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(Getproducts(productlist: [])) {
    on<ProductEvent>((event, emit) async {
      Apiservice apiService = Apiservice();
      var list = await apiService.fetchData();
      emit(ProductState(productlist: list));
    });
  }
}
