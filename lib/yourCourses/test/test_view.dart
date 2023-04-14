import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/test/course_test.dart';
import 'package:practice_learning_app/yourCourses/providers/test_provider.dart';
import 'package:practice_learning_app/yourCourses/test/test_question.dart';
import 'package:provider/provider.dart';

import '../../utils/global_colours.dart';
import '../lesson/course_lesson.dart';
import '../lesson/lessons_view.dart';
import '../model/lessons_model.dart';
import '../model/test_model.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key, required this.test, required this.lesson}) : super(key: key);

  final Test test;
  final Lesson lesson;

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TestProvider>(builder: (context, provider, child) {
      return Scaffold(
          backgroundColor: GlobalColors.buttonColorwhite,
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
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
                        widget.test.testTitle,
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
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  width: 343,
                  height: 127,
                  child: Column(
                    children: [
                      Text(
                      widget.lesson.lessonTitle,
                      style: TextStyle(
                        fontSize: 24,
                        color: GlobalColors.bigTextColorBlack,
                        fontFamily: 'Inter-SemiBold.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                      SizedBox(height: 8),
                      Text('3 of 11 lessons',//lesson index of lesson.length
                        style: TextStyle(
                            color: GlobalColors.smallTextColorGrey,
                            fontSize: 14,
                            fontFamily: 'Inter-Regular.ttf'
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 343,
                        height: 42,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLesson(lesson: lesson)));
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
                               //Navigator.push(context, MaterialPageRoute(builder: (context) => TestView(test: test, lesson: lesson,)));
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
                      ),// navigation between lesson, test and discuss
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      itemBuilder: (context, index){
                        final test = provider.test[index];
                        return CourseTest( test: test,testCallBack: (test){
                          if(mounted) {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => TestQuestion()));
                          }
                        },);
                      },
                      separatorBuilder: (context, index){
                        return const SizedBox(height: 14);
                      },
                      itemCount: provider.test.length
                  ),
                )
              ],
            ),
          ),
      );
    });
  }
}
