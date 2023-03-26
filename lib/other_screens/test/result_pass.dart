import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/other_screens/test/html_course_test.dart';
import 'package:practice_learning_app/utils/social_buttons.dart';

import '../../utils/global_colours.dart';

class ResultPass extends StatelessWidget {
  const ResultPass({Key? key}) : super(key: key);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HtmlCourseTests()));
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
                      'Result',
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
                    'assets/blush_images/result.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Congratulations',
                  style: TextStyle(
                    color: GlobalColors.bigTextColorBlack,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Congratulations for getting",
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
                  "all the answers correct",
                  maxLines: 2,
                  style: TextStyle(
                    color: GlobalColors.smallTextColorGrey,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 130),
                SocialLogins(
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
