// lib/providers/cart_provider.dart
import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];
  
  List<CartItem> get items => [..._items];
  
  void addItem(Product product, String selectedSize) {
    final existingIndex = _items.indexWhere(
      (item) => item.product.id == product.id && item.selectedSize == selectedSize
    );
    
    if (existingIndex >= 0) {
      _items[existingIndex].quantity += 1;
    } else {
      _items.add(CartItem(
        product: product,
        selectedSize: selectedSize,
      ));
    }
    notifyListeners();
  }

  void removeItem(String productId, String selectedSize) {
    _items.removeWhere(
      (item) => item.product.id == productId && item.selectedSize == selectedSize
    );
    notifyListeners();
  }
}