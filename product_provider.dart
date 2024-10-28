import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class ProductProvider with ChangeNotifier {
  final ProductService _productService = ProductService();

  List<Product> get products => _productService.products;

  void addProduct(String name, int quantity) {
    _productService.addProduct(name, quantity);
    notifyListeners();
  }
}
