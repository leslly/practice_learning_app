import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/model/lessons_model.dart';

class LessonProvider extends ChangeNotifier{
  final lesson = [
    Lesson(
        progressBarWidth: 222,
        lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
        lessonTitle: 'Main Tags',
    ),
    Lesson(
      progressBarWidth: 100,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Style Tags',
    ),
    Lesson(
      progressBarWidth: 35,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Header Tags',
    ),
    Lesson(
      progressBarWidth: 150,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Divs',
    ),
    Lesson(
      progressBarWidth: 200,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Image Tag',
    ),
  ];

  var index = 1;

  changeIndex(index){
    index = index;
    notifyListeners();
  }

}