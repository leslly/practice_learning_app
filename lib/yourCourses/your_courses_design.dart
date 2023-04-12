import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/model/your_course_model.dart';
import '../utils/global_colours.dart';

typedef YourCourseCallback = Function(YourCourse yourcourse);

class YourCoursesDesign extends StatelessWidget {
  const YourCoursesDesign({Key? key, required this.yourCourseCallback, required this.yourcourse}) : super(key: key);

  final  YourCourse yourcourse;
  final YourCourseCallback yourCourseCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        yourCourseCallback(yourcourse);
      },
      child:  Container(
        decoration: BoxDecoration(
          border: Border.all(color: GlobalColors.borderGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: yourcourse.yourCourseBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        yourcourse.yourCourseimage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    yourcourse.yourCoursedurationText,
                    style: TextStyle(
                      color: GlobalColors.profileBorder,
                      fontSize: 12,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    yourcourse.yourCoursetitleText,
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontSize: 24,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          yourcourse.yourCoursedescriptionText,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: GlobalColors.bigTextColorBlack,
                            fontSize: 14,
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}