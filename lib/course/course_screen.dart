import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import '../utils/global_colours.dart';
/*
* TypeDef allows you to utilize a function as a variable, field, or boundary.
* Out typedef is MyCallBack, the function Course has been made the variable course
*
* The container wrapped in the inkwell below is the design for each course widget button that navigates to
* the course_info*/
typedef MyCallback = Function(Course course);

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key, required this.course, required this.callback}) : super(key: key);
  final Course course;
  final MyCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        callback(course);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: GlobalColors.borderGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              height: 178,
              decoration: BoxDecoration(
                color: Color(course.color),
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
                        course.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.only(left: 11, right: 11, top: 3, bottom: 3),
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:GlobalColors.profileBorder,
                        ),
                        child: Text(
                          '\u20a6${course.price.toStringAsFixed(2)}',
                          style:  TextStyle(
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: GlobalColors.whiteTextColor,
                          ),
                        ),
                      ),
                    )
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
                    course.duration,
                    style: TextStyle(
                      color: GlobalColors.profileBorder,
                      fontSize: 12,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    course.title,
                    style:  TextStyle(
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
                          course.description,
                          overflow: TextOverflow.ellipsis,
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
