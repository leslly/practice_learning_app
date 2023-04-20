import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';

class CartProvider extends ChangeNotifier {

  // List of cart items
  final List<Course> _cartItems = [];

  List<Course> get cartItems => _cartItems;

  List<Course> get courses => _cartItems;

 // var isSuccessful = false;

  // Add item to the cart
  void addItemToCart(Course course) {
    _cartItems.add(course);
    notifyListeners();
   // isSuccessful = true;
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
      totalPrice += _cartItems[i].price;
    }
    return totalPrice.toStringAsFixed(2);
  }

}