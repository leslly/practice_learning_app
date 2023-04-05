import 'package:flutter/material.dart';
import 'package:practice_learning_app/index/model/course_model.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class IndexProvider extends ChangeNotifier {
  final courses = [
    Course(
        color: 0XFFF8F2EE,
        price: '\u20a6 5',
        title: 'UI',
        description: "Intro to mobile interface design",
        duration: '3 h 30 min',
        image: 'assets/blush_images/cool_kids_discussion.png',
      courseInfo: "jfdkfldfhjdkshdjfhdhfdjhfdm jkdjfjdhhjdjhf"
    ),
    Course(
        color: 0XFFF2F2F2,
        price: '\u20a6 7',
        title: 'Flutter',
        description: "Advanced cross-platform application",
        duration: '3 months',
        image: 'assets/blush_images/sitting.png',
        courseInfo: "jfdkfldfhjdkshdjfhdhfdjhfdm jkdjfjdhhjdjhf"
    ),
    Course(
        color: 0XFF78746D,
        price: '\u20a6 27',
        title: 'UI Advanced',
        description: "Advanced mobile interface design",
        duration: '3 months',
        image: 'assets/blush_images/sitting.png',
        courseInfo: "jfdkfldfhjdkshdjfhdhfdjhfdm jkdjfjdhhjdjhf"
    )
  ];
  var index = 1;

  changeIndex(index){
    this.index = index;
    notifyListeners();
  }
}