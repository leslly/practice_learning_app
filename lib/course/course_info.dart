import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/index.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import '../other_screens/Saved/course_saved.dart';
import '../utils/category_labels.dart';
import '../utils/global_button.dart';
import '../utils/global_colours.dart';

class CourseInfo extends StatefulWidget {
  const CourseInfo({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  State<CourseInfo> createState() => _CourseInfoState();
}

class _CourseInfoState extends State<CourseInfo> {
  @override
  Widget build(BuildContext context) {
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
          widget.course.title,
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
            padding:
                const EdgeInsets.only(left: 20, right: 16, top: 24, bottom: 42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Container(
                  height: 257,
                  width: 375,
                  child: Image.asset(
                    widget.course.image,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 300, bottom: 24),
                  child: CategoryLabels(
                    text: widget.course.price,
                  ),
                ),
                Text(
                  'About the course',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      color: GlobalColors.bigTextColorBlack),
                ),
                SizedBox(height: 10),
                Text(
                  widget.course.courseInfo,
                  style: TextStyle(
                      fontSize: 14,
                      color: GlobalColors.bigTextColorBlack,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf'),
                  overflow: TextOverflow.fade,
                  maxLines: 5,
                ),
                SizedBox(height: 24),
                Text(
                  'Duration',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  widget.course.duration,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                    color: GlobalColors.bigTextColorBlack,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 17, top: 53),
                  child: GlobalButton(
                    colorOfText: GlobalColors.whiteTextColor,
                    colorOfButton: GlobalColors.buttonColorOrange,
                    nextPage: () {
                      //Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseSaved()));
                    },
                    text: 'Add to cart',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
