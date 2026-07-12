

import 'dart:convert';

import 'package:flutter_166/module_17/CRUD/utils/urls.dart';
import 'package:http/http.dart' as https;

import '../model/product_Model.dart';

class ProductController {
List<Data> productss = [];

//----------GET----jsonDecode--------//
  Future<void> getProduct() async {
    final url = Uri.parse(Urls.readProductURL);
    final response = await https.get(url);

    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);
      ProductModel model = ProductModel.fromJson(jsonResponse);
      productss = model.data ?? [];
    }

  }
  
  //---------POST/send---jsonEncode-------//
Future<bool> createProduct (Data data) async {
    final url = Uri.parse(Urls.createProductURL);
    final response =await https.post(url,

    headers: {
      'Accept' : 'application/json',
      'Content-Type' : 'Application/json',
    },

    body: jsonEncode({
      "ProductName": data.productName,
      "ProductCode": DateTime.now().microsecondsSinceEpoch,
      "Img": data.img,
      "Qty": data.qty,
      "UnitPrice": data.unitPrice,
      "TotalPrice": data.totalPrice
    })
    );
    if(response.statusCode == 200){
      return true;

    }else{
      return false;
    }
}

//-------------------for Delete
Future<bool> deleteProduct(String productID) async {
    final url = Uri.parse(Urls.deleteProductURL(productID));
    final response =await https.get(url);

    if(response.statusCode == 200){
      getProduct();
      return true;
    }else{
      return false;
    }
}

//--------------------for Update
  Future<bool> updateProduct (String ProductID, Data data) async {
    final url = Uri.parse(Urls.updateProductURL(ProductID));
    final response =await https.post(url,

        headers: {
          'Accept' : 'application/json',
          'Content-Type' : 'Application/json',
        },

        body: jsonEncode({
          "ProductName": data.productName,
          "ProductCode": DateTime.now().microsecondsSinceEpoch,
          "Img": data.img,
          "Qty": data.qty,
          "UnitPrice": data.unitPrice,
          "TotalPrice": data.totalPrice
        })
    );
    if(response.statusCode == 200){
      getProduct();
      return true;

    }else{
      return false;
    }
  }
}