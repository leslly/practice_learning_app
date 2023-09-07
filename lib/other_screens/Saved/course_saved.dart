import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_learning_app/other_screens/cart/cart_view.dart';
import '../../course/index.dart';
import '../../course/index_provider.dart';
import '../../utils/global_button.dart';
import '../../utils/global_colours.dart';

class CourseSaved extends StatelessWidget {
  const CourseSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final courseProvider = context.watch<IndexProvider>();
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
          'Saved',
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 77),
                  SizedBox(
                    width: 375,
                    height: 253,
                    child: Image.asset(
                      'assets/blush_images/course_saved.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Course was added to cart',
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "You can find the course in",
                    maxLines: 2,
                    style: TextStyle(
                      color: GlobalColors.smallTextColorGrey,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "your cart in profile",
                    maxLines: 2,
                    style: TextStyle(
                      color: GlobalColors.smallTextColorGrey,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 32),
                  GlobalButton(
                    colorOfText: GlobalColors.whiteTextColor,
                    colorOfButton: GlobalColors.buttonColorOrange,
                    nextPage: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(course: courseProvider.courses[index])));
                    },
                    text: 'Continue to cart'
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Or',
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: Text(
                      'find more courses',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik-Medium.ttf',
                        color: GlobalColors.smallTextColorGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
