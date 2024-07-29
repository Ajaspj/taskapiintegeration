import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taskapiintegeration/models/productmodel/productmodel.dart';

class Apiservice {
  fetchData() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products/"));
    var jsonn = jsonDecode(response.body);
    var respmain = Productmodel.fromJson(jsonn);
    var list = respmain.title;
    return list;
  }
}
