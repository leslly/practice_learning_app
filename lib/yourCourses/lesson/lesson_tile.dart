import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/model/lessons_model.dart';
import '../../utils/global_colours.dart';

typedef LessonCallBack = Function(Lesson lesson);

class LessonTile extends StatelessWidget {
 const LessonTile({Key? key, required this.lesson, required this.lessonCallBack}) : super(key: key);

 final LessonCallBack lessonCallBack;
 final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        lessonCallBack(lesson);
      },
      child: Container(
        // width: 370,
        // height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: GlobalColors.borderGrey,
              width: 1,
              style: BorderStyle.solid
          ),
        ),
        child: ListTile(
          leading: Container(
                height: 72,
                width: 78,
                child: Image.asset(
                  lesson.lessonImage,
                  fit: BoxFit.contain,
                ),
              ),
            title: Text(
                    lesson.lessonTitle,
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    ),
                  ),
                  subtitle: Container(
                    width: 222,
                    height: 11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: Container(
                      width: lesson.progressBarWidth,
                      height: 11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: GlobalColors.profileBorder,
                      ),
                    ),
                  ),
              ),
        ),
    );
  }
}
