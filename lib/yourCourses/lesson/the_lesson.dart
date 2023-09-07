import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/global_colours.dart';
import '../model/lessons_model.dart';
import '../model/test_model.dart';
import '../model/your_course_model.dart';
import '../providers/test_provider.dart';
import '../test/course_test.dart';
import '../test/test_question.dart';

class TheLesson extends StatefulWidget {
  const TheLesson({Key? key, required this.test, required this.yourcourse, required this.lesson, required this.length, required this.position}) : super(key: key);

  final Lesson lesson;
  final YourCourse yourcourse;
  final int position;
  final int length;
  final List<Test> test;


  @override
  State<TheLesson> createState() => _TheLessonState();
}

class _TheLessonState extends State<TheLesson> with  TickerProviderStateMixin{

  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<TestProvider>(builder: (context, provider, child) {
      return Scaffold(
        backgroundColor: GlobalColors.buttonColorwhite,
        appBar: AppBar(
          centerTitle: true,
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
          title: Text(
            widget.yourcourse.yourCoursetitleText,
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
              Text("${widget.position} of ${widget.length} lessons",//lesson index of lesson.length
                style: TextStyle(
                    color: GlobalColors.smallTextColorGrey,
                    fontSize: 14,
                    fontFamily: 'Inter-Regular.ttf'
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.lesson.lessonTitle,
                style: TextStyle(
                  fontSize: 24,
                  color: GlobalColors.bigTextColorBlack,
                  fontFamily: 'Inter-SemiBold.ttf',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
                Container(
                    // width: 114,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TabBar(
                      controller: _controller,
                      indicator: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      tabs: const[
                        // Tab(text: 'Lesson',),
                        Text('Lessons'),
                        Tab(text: 'Test'),
                        Tab(text: 'Discuss'),
                      ],
                    ),
                  ),
                Expanded(
                  child: TabBarView(
                    controller: _controller,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      ///// FOR COURSE LESSON
                      Column(
                        children: [
                          const SizedBox(height: 30,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: GlobalColors.newColor.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: GlobalColors.newColor.withOpacity(0.0),
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Image.asset(
                                      widget.yourcourse.yourCourseimage,
                                      // Yourcourse image
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 287, top: 0, bottom: 8, right: 8),
                                  child: Image.asset(
                                      'assets/blush_icons/play_icon.png'
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Introduction',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: GlobalColors.bigTextColorBlack,
                                    fontFamily: 'Rubik-Medium.ttf',
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'You can launch a new career in web develop-ment today by learning HTML & CSS. You do not need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we are ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns',
                                maxLines: 12,
                                style: TextStyle(
                                    color: GlobalColors.smallTextColorGrey,
                                    fontSize: 14,
                                    fontFamily: 'Inter-Regular.ttf'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ///// FOR TESTS ASSOCIATED WITH LESSON
                      Expanded(
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                            itemBuilder: (context, index){
                              final test = widget.test[index];
                              return CourseTest( test: test,testCallBack: (test){
                                if(mounted) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TestQuestion()));
                                }
                              },);
                            },
                            separatorBuilder: (context, index){
                              return const SizedBox(height: 14);
                            },
                            itemCount: widget.test.length
                        ),
                      ),
                      ///// FOR THE CHAT ROOM
                      Column(
                        children: [
                          Container(
                            height: 200,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
