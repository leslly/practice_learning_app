import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/category_labels.dart';
import 'package:practice_learning_app/utils/course.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/navigation_buttons.dart';
import 'package:practice_learning_app/utils/product_detail.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 16.0, left: 16.0, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
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
                    const SizedBox(width: 99),
                    Center(
                      child: Container(
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
                    )
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
                     suffixIcon: Image.asset(
                       'assets/blush_icons/search_icon.png',
                       alignment: Alignment.centerRight,
                     ),
                   ),
                 ),
               ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 12, bottom: 20),
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
               Courses(backgroundColor: GlobalColors.profileBackground),
                const SizedBox(height: 16),
                Courses(
                  nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()));
                  },
                    backgroundColor: GlobalColors.lightGreen,
                  image: 'assets/blush_images/sitting.png',
                  descriptionText: 'Advanced cross-platform applications',
                  titleText: 'Flutter',
                  durationText: '3 months',
                ),
                const SizedBox(height: 16),
                Courses(
                  backgroundColor: GlobalColors.smallTextColorGrey,
                  image: 'assets/blush_images/cool_kids_high_tech.png',
                  descriptionText: 'Advanced mobile interface design',
                  titleText: 'UI Advanced',
                  durationText: '1 months',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 32, top: 8),
        height: 98,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(
            color: GlobalColors.borderGrey,
          ),
        ),
        child: const NavigationButtons(),
      ),
    );
  }
}
