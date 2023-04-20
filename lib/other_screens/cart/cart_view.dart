import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import 'package:practice_learning_app/other_screens/cart/cart_provider.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: GlobalColors.buttonColorwhite,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: GlobalColors.borderGrey,
                  ),
                ),
                child: const Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Cart',
            style: TextStyle(
              color: GlobalColors.bigTextColorBlack,
              fontSize: 24,
              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: GlobalColors.buttonColorwhite,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                    child: ListView.builder(
                      reverse: false,
                      physics: const BouncingScrollPhysics(),
                      itemCount: provider.cartItems.length,
                        itemBuilder: (context, index) {
                        final  item = provider.cartItems[index];
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: GlobalColors.borderGrey),
                                  borderRadius: BorderRadius.circular(8),
                                  color: GlobalColors.profileBackground
                              ),
                              child: Center(
                                child: ListTile(
                                  leading: Image.asset(item.image),// course image
                                  title: Text(item.title),// course title
                                  trailing: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () => context.read<CartProvider>().removeItemFromCart(index),
                                  ),// clear button
                                  subtitle: Text(item.price.toStringAsFixed(2)),// course price
                                ),
                              ),
                            ),
                          );
                        },
                    ),
                ),
                ///// TOTAL + PAY NOW
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: GlobalColors.profileBorder,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Total Price',
                              style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 16,
                            ),
                            ),
                            Text(
                              provider.calculateTotal(),
                              style: const TextStyle(
                                  color: CupertinoColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        // pay now button
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: const [
                              Text(
                                'Pay Now',
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                              size: 16,
                              color: CupertinoColors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
