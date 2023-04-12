import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {



  final List _courseForSale =[
    //[image, priceText, duratiionText, titleText, decriptionText, backgroundColor]
    ['assets/blush_images/cool_kids_discussion.png', '\$ 50', '3 hrs', 'A description', Colors.pink]
  ];

  // List of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get courseForSale => _courseForSale;

  var isSuccessful = false;
  // Add item to the cart
  Future addItemToCart(int index) {
    _cartItems.add(_courseForSale[index]);
    //notifyListeners();
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