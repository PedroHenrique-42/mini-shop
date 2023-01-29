import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _products = dummyProducts;

  List<Product> get products => [..._products];
  List<Product> get favoriteItems {
    return _products.where((prod) => prod.isFavorite).toList();
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}

  // bool _showFavoriteOnly = false;



  //   return [..._products];
  // }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }