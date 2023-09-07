import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import '../model/test_model.dart';

typedef TestCallBack = Function(Test test);

class CourseTest extends StatelessWidget {
  const CourseTest({Key? key, required this.testCallBack, required this.test}) : super(key: key);

  final Test test;
  final TestCallBack testCallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: GlobalColors.borderGrey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
               test.testImage,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              test.quiz,
              style: const TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 14,
                fontFamily: 'Rubik-Regular.ttf'
              ),
            ),
            const SizedBox(height: 16),
            Text(
              test.testTitle,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: GlobalColors.bigTextColorBlack,
                fontSize: 20,
                fontFamily: 'Rubik-Medium.ttf'
              ),
            ),
            const SizedBox(height: 16),
            Text(
              test.testDescription,
              style: TextStyle(
                color: GlobalColors.smallTextColorGrey,
                fontSize: 14,
                fontFamily: 'Rubik-Regular.ttf'
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Center(
              child: InkWell(
                onTap: () {
                  testCallBack(test);
                  // Navigate to test questions
                },
                child: Container(
                  width: 295,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 72),
                    child: Text(
                      'Begin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontFamily: 'Rubik-Regular',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
