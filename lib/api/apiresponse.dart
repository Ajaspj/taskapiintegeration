import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taskapiintegeration/models/productmodel/productmodel.dart';

class Apiservice {
  Future<List<Productmodel>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Productmodel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
