import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/global_colours.dart';

class TestQuestion extends StatefulWidget {
  const TestQuestion({Key? key}) : super(key: key);

  @override
  State<TestQuestion> createState() => _TestQuestionState();
}

class _TestQuestionState extends State<TestQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //  Eqach question is 2mrks = 20 questions
            ],
          ),
        ),
      ),
    );
  }
}
