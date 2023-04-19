import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {

  int index = 0;
  // List of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get courses => courses;

  var isSuccessful = false;

  // Add item to the cart
  Future addItemToCart(int index) {
    _cartItems.add(courses[index]);
    notifyListeners();
    isSuccessful = true;
    return Future(() => null);
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}