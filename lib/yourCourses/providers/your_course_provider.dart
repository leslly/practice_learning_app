import 'package:flutter/material.dart';
import 'package:practice_learning_app/yourCourses/model/your_course_model.dart';

import '../../utils/global_colours.dart';

class YourCourseProvider extends ChangeNotifier{
  final yourCourses = [
    YourCourse(
      courseId: 1,
        yourCourseBackgroundColor: Colors.grey,
        yourCourseimage: 'assets/blush_images/sittingtwo.png',
        yourCoursedurationText: 'Left 1 month 3 days',
        yourCoursetitleText: 'Swift',
        yourCoursedescriptionText: 'Advanced IOS apps',
       ),
    YourCourse(
      yourCourseBackgroundColor: GlobalColors.newColor,
      yourCourseimage: 'assets/blush_images/sittingtwo.png',
      yourCoursedurationText: 'Left 1 month 3 days',
      yourCoursetitleText:'Flutter',
      yourCoursedescriptionText: 'Advanced apps',
      courseId: 2,
    ),
    YourCourse(
      yourCourseBackgroundColor: Colors.grey,
      yourCourseimage: 'assets/blush_images/cool_kids_performing.png',
      yourCoursedurationText: 'Left 1 month',
      yourCoursetitleText: 'Figma',
      yourCoursedescriptionText: 'Advanced designing with various components',
      courseId: 3,
    ),
    YourCourse(
      yourCourseBackgroundColor: GlobalColors.profileBackground,
      yourCourseimage: 'assets/blush_images/cool_kids_long_distance_relationship_one.png',
      yourCoursedurationText: 'Left 1 month',
      yourCoursetitleText: 'Html',
      yourCoursedescriptionText: 'Advanced web applications',
      courseId: 4,
    ),
  ];

  var index = 1;

  changeIndex(index){
    index = index;
    notifyListeners();
  }

}