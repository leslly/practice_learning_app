import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:provider/provider.dart';
import '../../utils/global_button.dart';
import '../../utils/global_colours.dart';


class CourseNotSaved extends StatelessWidget {
  const CourseNotSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexProvider>(builder: (context, provider, child) {
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
          centerTitle: true,
          title: Text(
            'Saved',
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  const SizedBox(height: 127),
                  SizedBox(
                    width: 375,
                    height: 253,
                    child: Image.asset(
                      'assets/blush_images/course_not_saved.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Course not saved',
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Try saving the course",
                    maxLines: 2,
                    style: TextStyle(
                      color: GlobalColors.smallTextColorGrey,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "your cart in profile",
                    maxLines: 2,
                    style: TextStyle(
                      color: GlobalColors.smallTextColorGrey,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 32),
                  GlobalButton(
                      colorOfText: GlobalColors.whiteTextColor,
                      colorOfButton: GlobalColors.buttonColorOrange,
                      nextPage: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => CourseInfo(course: course)));
                      },
                      text: 'Continue'
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
