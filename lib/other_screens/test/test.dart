import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'test_model.dart';

typedef AnotherCallBack = Function(Test test);

class Test extends StatelessWidget {
  const Test({Key? key, required this.testCallBack, required this.test}) : super(key: key);

  final Test test;
  final AnotherCallBack testCallBack;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        testCallBack(test);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: GlobalColors.borderGrey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 32),
          child: Column(
            children: [
              Image.asset(
                test.testImage,
              ),
              SizedBox(height: 16),
              Text(
                'widget.test.quiz',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 14,
                  fontFamily: 'Rubik-Regular.ttf'
                ),
              ),
              SizedBox(height: 16),
              Text(
                'widget.test.testTitle',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: GlobalColors.bigTextColorBlack,
                  fontSize: 20,
                  fontFamily: 'Rubik-Medium.ttf'
                ),
              ),
              SizedBox(height: 16),
              Text(
                'widget.test.testDescription',
                style: TextStyle(
                  color: GlobalColors.smallTextColorGrey,
                  fontSize: 14,
                  fontFamily: 'Rubik-Regular.ttf'
                ),
                maxLines: 2,
              ),
              SizedBox(height: 8),
              InkWell(
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
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 55),
                    child: Text(
                      'Begin',
                      style: TextStyle(
                        color: GlobalColors.bigTextColorBlack,
                        fontFamily: 'Rubik-Regular',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
