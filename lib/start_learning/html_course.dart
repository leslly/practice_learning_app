import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/html_list_view.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';

class HtmlCourse extends StatelessWidget {
  const HtmlCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 16, top: 24, bottom: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
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
                      'HTML',
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontSize: 24,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: 399,
                  height: 440,
                  decoration: BoxDecoration(
                    border: Border.all(color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: GlobalColors.profileBackground,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, top: 16),
                              child: Container(
                                width: 370,
                                height: 334,
                                color: GlobalColors.profileBackground,
                                child: Image.asset(
                                  'assets/blush_images/cool_kids_long_distance_relationship.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8, left: 302, right: 16),
                              child: Image.asset(
                                'assets/blush_images/play_icon.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'HTML',
                          style: TextStyle(
                            color: GlobalColors.bigTextColorBlack,
                            fontSize: 24,
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 16),
                        child: Text(
                          'Advanced web applications',
                          style: TextStyle(
                            color: GlobalColors.smallTextColorGrey,
                            fontSize: 14,
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                          ),
                        ),
                      ),
                      const HtmlListView(),
                      const SizedBox(height: 16),
                      const HtmlListView(
                        text: 'Tags For Headers',
                        image: 'assets/blush_fonts/kids_on_wheels_one.png',
                      ),
                      const SizedBox(height: 16),
                      const HtmlListView(
                        text: 'Style tags',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
