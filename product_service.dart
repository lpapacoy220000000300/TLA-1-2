import '../models/product.dart';

class ProductService {
  final List<Product> _products = [];

  List<Product> get products => List.unmodifiable(_products);

  void addProduct(String name, int quantity) {
    _products.add(Product(name: name, quantity: quantity));
  }
}
