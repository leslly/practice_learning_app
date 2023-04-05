import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/course.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/product_detail.dart';

class HomeScreenList extends StatefulWidget {
  const HomeScreenList({Key? key}) : super(key: key);

  @override
  State<HomeScreenList> createState() => _HomeScreenListState();
}

class _HomeScreenListState extends State<HomeScreenList> {

  List<Courses> courses = [
    Courses(backgroundColor: GlobalColors.profileBackground),
    Courses(backgroundColor:  GlobalColors.lightGreen,
      image: 'assets/blush_images/sitting.png',
      descriptionText: 'Advanced cross-platform applications',
      titleText: 'Flutter',
      durationText: '3 months',
    ),
    Courses(
      backgroundColor: GlobalColors.smallTextColorGrey,
      image: 'assets/blush_images/cool_kids_high_tech.png',
      descriptionText: 'Advanced mobile interface design',
      titleText: 'UI Advanced',
      durationText: '1 months',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder( itemBuilder: (context, index){
      return  Courses(
        backgroundColor: courses[index].backgroundColor,
        image: courses[index].image,
        descriptionText: courses[index].descriptionText,
        titleText: courses[index].titleText,
        durationText: courses[index].durationText,
      );
    },
       itemCount: courses.length,
    );
  }
}