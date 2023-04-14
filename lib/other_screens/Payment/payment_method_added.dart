import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/index.dart';
import '../../utils/global_button.dart';
import '../../utils/global_colours.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                    const SizedBox(width: 250),
                    Text(
                      'Payment',
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontSize: 24,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 127),
                Container(
                  width: 375,
                  height: 253,
                  child: Image.asset(
                    'assets/blush_images/payment_added.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Payment method added',
                  style: TextStyle(
                    color: GlobalColors.bigTextColorBlack,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "You can buy the course now",
                  maxLines: 2,
                  style: TextStyle(
                    color: GlobalColors.smallTextColorGrey,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Continue to payment",
                  maxLines: 2,
                  style: TextStyle(
                    color: GlobalColors.smallTextColorGrey,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 32),
                GlobalButton(
                  colorOfText: GlobalColors.whiteTextColor,
                  colorOfButton: GlobalColors.buttonColorOrange,
                  nextPage: () {},
                  text: 'Continue',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
