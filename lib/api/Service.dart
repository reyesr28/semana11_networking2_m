import 'dart:convert';
import 'listaProducts.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';

class Service{

  static Future<List<Product>> getProduct() async{

    final rspta=await http.get(Uri.parse("https://api.spoonacular.com/food/products/search?query=arroz&number=50&apiKey=60db81606d45463498348444e20577cc"));

    if(rspta.statusCode==200){
      final rsptaJson=json.decode(rspta.body);
      final todosProducts=listado.listaProduct(rsptaJson['products']);
      return todosProducts;
    }
    return <Product>[];

  }

}