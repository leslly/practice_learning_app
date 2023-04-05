import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/other_screens/html_course_lesson.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/lists/html_list_view.dart';
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
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
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
                    height: 500,
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
                                padding: const EdgeInsets.only(bottom: 0, top: 16),
                                child: Container(
                                  width: 399,
                                  height: 334,
                                  color: GlobalColors.profileBackground,
                                  child: Image.asset(
                                    'assets/blush_images/cool_kids_long_distance_relationship.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, left: 302, right: 0, top: 0),
                                child: Image.asset(
                                  'assets/blush_icons/play_icon.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
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
                        const SizedBox(height: 4),
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
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                   Expanded(child:  HtmlListView(
                     image: 'assets/blush_images/cool_kids_on_wheels_one.png',
                   )),
                  SizedBox(height: 16),
                  Expanded(
                    child:  HtmlListView(
                      lessonPage: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLesson()));
                      },
                      text: 'Tags For Headers',
                      progressBarWidth: 90.05,
                      image: 'assets/blush_images/cool_kids_on_wheels_one.png',
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: HtmlListView(
                      image: 'assets/blush_images/cool_kids_on_wheels_one.png',
                      text: 'Style tags',
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
