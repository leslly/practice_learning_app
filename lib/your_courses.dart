import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/course.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/navigation_buttons.dart';
import 'package:practice_learning_app/utils/your_courses_design.dart';

import 'home_screen.dart';

class YourCourses extends StatefulWidget {
  const YourCourses({Key? key}) : super(key: key);

  @override
  State<YourCourses> createState() => _YourCoursesState();
}

class _YourCoursesState extends State<YourCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 16, top: 24, bottom: 42),
            child: Column(
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
                      'Your Courses',
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
               YourCoursesDesign(
                 backgroundColor: Colors.grey,
                 titleText: 'Swift',
                 descriptionText: 'Advanced IOS apps',
                 durationText: 'Left 1 month 3 days',
                 image: 'assets/blush_images/sittingtwo.png',
               ),
                SizedBox(height: 16),
                YourCoursesDesign(
                  backgroundColor: GlobalColors.newColor,
                  titleText: 'Flutter',
                  descriptionText: 'Advanced IOS apps',
                  durationText: 'Left 1 month 3 days',
                ),
                SizedBox(height: 16),
                YourCoursesDesign(
                  backgroundColor: Colors.grey,
                  titleText: 'FIGMA',
                  descriptionText: 'Advanced designing with various components',
                  durationText: 'Left 1 month',
                  image: 'assets/blush_images/cool_kids_performing.png',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 32, top: 8),
        height: 98,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(
            color: GlobalColors.borderGrey,
          ),
        ),
        child: const NavigationButtons(),
      ),
    );
  }
}
