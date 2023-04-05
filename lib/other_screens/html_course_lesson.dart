import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';

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
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
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
                           Container(
                             width: 114,
                             height: 42,
                             color: Colors.grey,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(16),
                                   bottomLeft: Radius.circular(16),
                               ),
                             ),
                             child: Text(
                               'Lessons',
                               style: TextStyle(
                                 fontSize: 16,
                                 color: GlobalColors.smallTextColorGrey,
                               ),
                             ),
                           ),
                           SizedBox(width: 4),
                           Container(
                             width: 114,
                             height: 42,
                             color: Colors.grey,
                             child: Text(
                               'Tests',
                               style: TextStyle(
                                 fontSize: 16,
                                 color: GlobalColors.smallTextColorGrey,
                               ),
                             ),
                           ),
                           SizedBox(width: 4),
                           Container(
                             width: 114,
                             height: 42,
                             color: Colors.grey,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(16),
                                 bottomLeft: Radius.circular(16),
                               ),
                             ),
                             child: InkWell(
                               onTap: () {
                                 //chat room
                               },
                               child: Text(
                                 'Discuss',
                                 style: TextStyle(
                                   fontSize: 16,
                                   color: GlobalColors.smallTextColorGrey,
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 16),
                     Container(
                       width: 343,
                       height: 194,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: GlobalColors.newColor,
                       ),
                       child: Column(
                         children: [
                           Container(
                             height: 138,
                             width: 343,
                             color: GlobalColors.newColor,
                             child: Image.asset(
                               'assets/blush_images/cool_kids_long_distance_relationship.png',
                               fit: BoxFit.contain,
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.only(left: 287, top: 0, bottom: 8, right: 8),
                             child: Container(
                               height: 48,
                               width: 48,
                               child: Image.asset(
                                 'assets/blush_icons/play_icon.png'
                               ),
                             ),
                           ),
                           SizedBox(height: 16),
                           Container(
                             child: Column(
                               children: [
                                 Text(
                                     'Introduction',
                                   style: TextStyle(
                                     fontSize: 20,
                                     color: GlobalColors.bigTextColorBlack,
                                     fontFamily: 'Rubik-Medium.ttf'
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
