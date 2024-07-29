import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskapiintegeration/products/bloc/product_bloc.dart';
import 'package:taskapiintegeration/view/homescreen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ProductBloc>(
        create: (BuildContext context) => ProductBloc()..add(Fetch()),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
