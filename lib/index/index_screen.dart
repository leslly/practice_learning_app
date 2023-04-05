import 'package:flutter/material.dart';
import 'package:practice_learning_app/index/course_info.dart';
import 'package:practice_learning_app/index/course_screen.dart';
import 'package:practice_learning_app/index/index_provider.dart';
import 'package:provider/provider.dart';

import '../bottom_nav_bar/home_screen.dart';
import '../utils/category_labels.dart';
import '../utils/global_colours.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final TextEditingController searchController = TextEditingController();

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
                    onTap: () {
                      showSearch(context: context, delegate: MySearchDelegate());
                    },
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
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                      itemBuilder: (context, index){
                        final course = provider.courses[index];
                        return CourseScreen(course: course, callback: (course){
                          //Navigate to your next screen using the course object
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CourseInfo(course: course)));
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
}
