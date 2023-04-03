import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/other_screens/Saved/course_saved.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import '../bottom_nav_bar/home_screen.dart';
import 'category_labels.dart';
import 'global_colours.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 16, top: 24, bottom: 42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
                    const SizedBox(width: 92),
                    Text(
                      'Flutter',
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontSize: 24,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  height: 257,
                  width: 375,
                  child: Image.asset(
                    'assets/blush_images/product.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 300, bottom: 24),
                  child: CategoryLabels(
                    text: "\$ 50",
                  ),
                ),
                Text(
                  'About the course',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    color: GlobalColors.bigTextColorBlack
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "You can launch a new career in app development today by learning Flutter. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                  style: TextStyle(
                    fontSize: 14,
                    color: GlobalColors.bigTextColorBlack,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf'
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 5,
                ),
                SizedBox(height: 24),
                Text(
                  'Duration',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '3 months',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 17, top: 53),

                    child: GlobalButton(
                        colorOfText: GlobalColors.whiteTextColor,
                        colorOfButton: GlobalColors.buttonColorOrange,
                        nextPage: () {
                          //Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSaved()));
                        },
                    text: 'Add to cart',),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
