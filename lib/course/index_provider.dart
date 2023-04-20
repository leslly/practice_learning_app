import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';

class IndexProvider extends ChangeNotifier {
  final courses = [
    Course(
      courseId: 4,
        color: 0XFFF8F2EE,
        price:  50.00,
        title: 'HTML',
        description: "Intro to mobile interface design",
        duration: '3 h 30 min',
        image: 'assets/blush_images/cool_kids_discussion.png',
      courseInfo: "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust."
    ),
    Course(
      courseId: 2,
        color: 0XFFF2F2F2,
        price:  50.00,
        title: 'Flutter',
        description: "Advanced cross-platform application",
        duration: '3 months',
        image: 'assets/blush_images/sitting.png',
        courseInfo: "You can launch a new career in App development today by learning Flutter. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust."
    ),
    Course(
      courseId: 5,
        color: 0XFFF8F2EE,
        price:  50.00,
        title: 'UI Advanced',
        description: "Advanced mobile interface design",
        duration: '3 months',
        image: 'assets/blush_images/sitting.png',
        courseInfo: "You can launch a new career in design today by learning UI. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust."
    )
  ];
  var index = 1;

  changeIndex(index){
    this.index = index;
    notifyListeners();
  }
}