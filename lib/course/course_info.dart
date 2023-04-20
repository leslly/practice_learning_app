import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import 'package:provider/provider.dart';
import '../other_screens/Saved/course_saved.dart';
import '../other_screens/cart/cart_provider.dart';
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
   //int index = 0;// I don't really know if this is correct, very sure this is not correct. chould be course index
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, provider, child)
    {
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Center(
                    child: SizedBox(
                      height: 257,
                      width: 375,
                      child: Image.asset(
                        widget.course.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  CategoryLabels(
                    text: widget.course.price.toString(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'About the course',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                        color: GlobalColors.bigTextColorBlack),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.course.courseInfo,
                    style: TextStyle(
                        fontSize: 14,
                        color: GlobalColors.bigTextColorBlack,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf'),
                    overflow: TextOverflow.fade,
                    maxLines: 5,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Duration',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.course.duration,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: GlobalButton(
                      colorOfText: GlobalColors.whiteTextColor,
                      colorOfButton: GlobalColors.buttonColorOrange,
                       nextPage: () {
                        Provider.of<CartProvider>(context, listen: false).addItemToCart(widget.course);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseSaved()));
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
    });
  }
}
