import 'package:flutter/material.dart';
import 'package:practice_learning_app/model/shop.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ShopItem> shopitems;
  List<ShopItem> cartitems = [];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
