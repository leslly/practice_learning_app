import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import 'package:practice_learning_app/other_screens/cart/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/global_colours.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int index = 0;// I don't really know if this is correct
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 75,
      // these constrains will not be necessary but wait till can solve errors
      decoration: BoxDecoration(
          border: Border.all(color: GlobalColors.borderGrey),
          borderRadius: BorderRadius.circular(8),
          color: GlobalColors.profileBackground
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(widget.course.image),// course image
          title: Text(widget.course.title),// course title
          trailing: IconButton(
              icon: Icon(Icons.clear),
            onPressed: () => context.read<CartProvider>().removeItemFromCart(index),
          ),// clear button
          subtitle: Text(widget.course.price),// course price
        ),
      ),
    );
  }
}
