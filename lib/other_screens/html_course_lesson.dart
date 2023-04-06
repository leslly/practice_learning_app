import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';
import 'package:practice_learning_app/other_screens/test/html_test_questions.dart';
import 'package:practice_learning_app/start_learning/html_course.dart';

import '../utils/global_colours.dart';

class CourseLesson extends StatefulWidget {
  const CourseLesson({Key? key}) : super(key: key);

  @override
  State<CourseLesson> createState() => _CourseLessonState();
}

class _CourseLessonState extends State<CourseLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HtmlCourse()));
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
                    const SizedBox(width: 118),
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
                SizedBox(height: 20),
                Container(
                 // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  width: 343,
                  height: 127,
                 child: Column(
                   children: [
                     Text('3 of 11 lessons',
                     style: TextStyle(
                     color: GlobalColors.smallTextColorGrey,
                       fontSize: 14,
                       fontFamily: 'Inter-Regular.ttf'
                     ),
                     ),
                     SizedBox(height: 8),
                     Text(
                       'Tags For Headers',
                       style: TextStyle(
                         fontSize: 24,
                         color: GlobalColors.bigTextColorBlack,
                         fontFamily: 'Inter-SemiBold.ttf',
                       ),
                       textAlign: TextAlign.center,
                     ),
                     SizedBox(height: 16),
                     Container(
                       width: 343,
                       height: 42,
                       child: Row(
                         children: [
                           InkWell(
                             onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLesson()));
                               // setState(() {
                               //
                               // });
                             },
                             child: Container(
                               width: 114,
                               height: 42,
                               decoration: BoxDecoration(
                                 color: GlobalColors.profileBackground,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(16),
                                     bottomLeft: Radius.circular(16),
                                 ),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                                 child: Text(
                                   'Lessons',
                                   style: TextStyle(
                                     fontSize: 16,
                                     color: GlobalColors.smallTextColorGrey,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 4),
                           InkWell(
                             onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => CourseTests()));
                             },
                             child: Container(
                               width: 107,
                               height: 42,
                               color: GlobalColors.profileBackground,
                               child: Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 33, vertical: 10),
                                 child: Text(
                                   'Tests',
                                   style: TextStyle(
                                     fontSize: 16,
                                     color: GlobalColors.smallTextColorGrey,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 4),
                           InkWell(
                             onTap: () {},
                             child: Container(
                               width: 114,
                               height: 42,
                               decoration: BoxDecoration(
                                 color: GlobalColors.profileBackground,
                                 borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(16),
                                   bottomRight: Radius.circular(16),
                                 ),
                               ),
                               child: InkWell(
                                 onTap: () {
                                   //chat room
                                 },
                                 child: Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                                   child: Text(
                                     'Discuss',
                                     style: TextStyle(
                                       fontSize: 16,
                                       color: GlobalColors.smallTextColorGrey,
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                  ),
                SizedBox(height: 16),
                Container(
                  // width: 343,
                  // height: 139,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: GlobalColors.newColor.withOpacity(0.2),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 343,
                        decoration: BoxDecoration(
                          color: GlobalColors.newColor.withOpacity(0.0),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                          ),
                        ),
                        child: Image.asset(
                          'assets/blush_images/cool_kids_long_distance_relationship.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 287, top: 0, bottom: 8, right: 8),
                        child: Image.asset(
                            'assets/blush_icons/play_icon.png'
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction',
                        style: TextStyle(
                            fontSize: 20,
                            color: GlobalColors.bigTextColorBlack,
                            fontFamily: 'Rubik-Medium.ttf',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'You can launch a new career in web develop-ment today by learning HTML & CSS. You do not need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we are ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns',
                        maxLines: 12,
                        style: TextStyle(
                            color: GlobalColors.smallTextColorGrey,
                            fontSize: 14,
                            fontFamily: 'Inter-Regular.ttf'
                        ),
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
