import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/bottom_nav_bar/profile_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
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
                            CupertinoIcons.back
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 230),
                  Text(
                    'My Cart',
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontSize: 24,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
             Expanded(
               child: ListView(
                 children: [
                   Container(
                     width: 200,
                     height: 75,
                     decoration: BoxDecoration(
                         border: Border.all(color: GlobalColors.borderGrey),
                       borderRadius: BorderRadius.circular(8),
                       color: GlobalColors.profileBackground
                     ),
                     child: Center(
                       child: ListTile(
                         leading: Image.asset('assets/blush_images/cool_plant.png'),
                         title: Text('A course'),
                         trailing: Icon(Icons.clear),
                       ),
                     ),
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
