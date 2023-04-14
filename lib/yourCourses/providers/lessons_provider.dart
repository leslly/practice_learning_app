import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/model/lessons_model.dart';

class LessonProvider extends ChangeNotifier{
  LessonProvider(){
    map = {
      1: swiftLesson,
      2: flutterLesson,
      3: figmaLesson,
      4: htmlLesson
    };
  }
  final swiftLesson = [
    Lesson(
        progressBarWidth: 222,
        lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
        lessonTitle: 'Main Swift',
    ),
    Lesson(
      progressBarWidth: 100,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Style Swift',
    ),
    Lesson(
      progressBarWidth: 35,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Header Swift',
    ),
    Lesson(
      progressBarWidth: 150,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Divs Swift',
    ),
  ];

 final flutterLesson = [
    Lesson(
        progressBarWidth: 222,
        lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
        lessonTitle: 'Main Flutter',
    ),
    Lesson(
      progressBarWidth: 100,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Style Flutter',
    ),
    Lesson(
      progressBarWidth: 35,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Header Flutter',
    ),
    Lesson(
      progressBarWidth: 150,
      lessonImage: 'assets/blush_images/cool_kids_on_wheels_one.png',
      lessonTitle: 'Divs Flutter',
    ),
  ];

 final figmaLesson = [
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
  ];

 final htmlLesson = [
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
  ];

 late Map<int, List<Lesson>> map;

  var index = 1;

  changeIndex(index){
    index = index;
    notifyListeners();
  }

}