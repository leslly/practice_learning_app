import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/providers/lessons_provider.dart';
import 'package:practice_learning_app/yourCourses/model/your_course_model.dart';
import 'package:provider/provider.dart';
import '../../bottom_nav_bar/your_courses.dart';
import 'lesson_tile.dart';
import 'course_lesson.dart';
import '../../utils/global_colours.dart';

class LessonsView extends StatefulWidget {
  const LessonsView({Key? key, required this.yourcourse}) : super(key: key);

  final YourCourse yourcourse;

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LessonProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: GlobalColors.buttonColorwhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 16, top: 24, bottom: 0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
                        },
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
                      Padding(
                        padding: EdgeInsets.only(right: 250),
                        child: Text(
                          widget.yourcourse.yourCoursetitleText,
                          style: TextStyle(
                            color: GlobalColors.bigTextColorBlack,
                            fontSize: 24,
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: widget.yourcourse.yourCourseBackgroundColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 0, top: 16),
                                child: Container(
                                  color: widget.yourcourse.yourCourseBackgroundColor.withOpacity(0.1),
                                  child: Image.asset(
                                    widget.yourcourse.yourCourseimage,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 8, left: 302, right: 8, top: 0),
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
                            widget.yourcourse.yourCoursetitleText,
                            style: TextStyle(
                              color: GlobalColors.bigTextColorBlack,
                              fontSize: 24,
                              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, bottom: 16),
                          child: Text(
                            widget.yourcourse.yourCoursedescriptionText,
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
                  Expanded(
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        itemBuilder: (context, index) {
                          final lesson = provider.lesson[index];
                          return LessonTile(lesson: lesson, lessonCallBack: (lessonCallBack) {
                           if(mounted) {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLesson(lesson: lesson)));
                           }
                          }
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 14);
                        },
                        itemCount: provider.lesson.length
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
