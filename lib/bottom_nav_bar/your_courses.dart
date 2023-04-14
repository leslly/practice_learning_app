import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/index.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:provider/provider.dart';
import '../yourCourses/lesson/lessons_view.dart';
import '../yourCourses/providers/your_course_provider.dart';
import '../yourCourses/your_courses_design.dart';

class YourCourses extends StatefulWidget {
  const YourCourses({Key? key}) : super(key: key);

  @override
  State<YourCourses> createState() => _YourCoursesState();
}

class _YourCoursesState extends State<YourCourses> {
  @override
  Widget build(BuildContext context) {
    return Consumer<YourCourseProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: GlobalColors.buttonColorwhite,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
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
                  CupertinoIcons.back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          title: Text(
            'Your Courses',
            style: TextStyle(
              color: GlobalColors.bigTextColorBlack,
              fontSize: 24,
              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: GlobalColors.buttonColorwhite,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      itemBuilder: (context, index){
                        final yourcourse = provider.yourCourses[index];
                        return YourCoursesDesign( yourcourse: yourcourse, yourCourseCallback: (yourcourse) {
                         // Navigate to the chosen course screen showing different lessons
                          if(mounted) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LessonsView(yourcourse: yourcourse)));
                          }
                        },
                        );
                      },
                      separatorBuilder: (context, index){
                        return const SizedBox(height: 14);
                      },
                      itemCount: provider.yourCourses.length
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
