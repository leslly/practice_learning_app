import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/global_colours.dart';
import '../../utils/social_buttons.dart';


class ResultAvg extends StatelessWidget {
  const ResultAvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Result',
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
            child: Column(
              children: [
                const SizedBox(height: 127),
                SizedBox(
                  width: 375,
                  height: 253,
                  child: Image.asset(
                    'assets/blush_images/search_not_found.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Well Done',
                  style: TextStyle(
                    color: GlobalColors.bigTextColorBlack,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "You scored above the average mark",
                  maxLines: 2,
                  style: TextStyle(
                    color: GlobalColors.smallTextColorGrey,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 130),
                const SocialLogins(
                  text: 'Share your progress',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
