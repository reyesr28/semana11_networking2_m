import 'package:semana11_networking2_m/api/Product.dart';

class listado{

  static List<Product> listaProduct(List<dynamic> listaJson){
    List<Product> listaProduc=[];

    if(listaJson!=null){
      for(var p in listaJson){
        final pro=Product.objJson(p);
        listaProduc.add(pro);
      }
    }
    return listaProduc;
  }

}