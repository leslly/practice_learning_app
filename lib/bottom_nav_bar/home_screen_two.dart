import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/course_info.dart';
import 'package:practice_learning_app/course/course_screen.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/course/model/course_model.dart';
import 'package:provider/provider.dart';
import '../utils/category_labels.dart';
import '../utils/global_colours.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  final TextEditingController searchController = TextEditingController();

  // List<Course> _searchFound = [];
  //
  // @override
  // void initState() {
  //   _searchFound = courses[index];//this is supposed to be the list from the provider
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexProvider>(builder: (context, provider, child){
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: GlobalColors.smallTextColorGrey,
                              fontSize: 16,
                              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Leslie Akinrinde',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: GlobalColors.bigTextColorBlack,
                              fontFamily: 'assets/blush_fonts/Rubik/Rubik-Bold.ttf',
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: 48,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all( color: GlobalColors.borderGrey),
                      ),
                      child: Image.asset(
                        'assets/blush_icons/Notification.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: 56,
                  width: 399,
                  padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: GlobalColors.borderGrey,
                      width: 1,
                    ),
                  ),
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search course',
                      hintStyle: TextStyle(
                        height: 1,
                        color: GlobalColors.smallTextColorGrey,
                        fontSize: 14,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          ////search for course
                        },
                        child: Image.asset(
                          'assets/blush_icons/search_icon.png',
                          height: 24,
                          width: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category:',
                        style: TextStyle(
                          fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                          fontSize: 14,
                          color: GlobalColors.bigTextColorBlack,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#CSS'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#UX'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Swift'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Flutter'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#UI'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Python'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#SQL'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Kotlin'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#CSS'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#JS'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Java'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#C.programming'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#C++'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#React'),
                      const SizedBox(width: 12),
                      const CategoryLabels(text: '#Node.JS'),

                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      itemBuilder: (context, index){
                        final course = provider.courses[index];
                        return CourseScreen(course: course, callback: (course){
                          //Navigate to your next screen using the course object
                          if(mounted) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CourseInfo(course: course)));
                          }
                        });
                      },
                      separatorBuilder: (context, index){
                        return const SizedBox(height: 14);
                      },
                      itemCount: provider.courses.length
                  ),
                )
              ]
          ),
        ),
      );
    });
  }
  // void _runfilter (String enteredKeyword) {
  //   List<Course> results = [];
  //   if(enteredKeyword.isEmpty) {
  //     results = courses[index];//list from provider
  //   }else{
  //     results = courses.where((course) => course.title!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
  //   }
  //
  //   setState(() {
  //     _searchFound = results;
  //   });
  // }
}
