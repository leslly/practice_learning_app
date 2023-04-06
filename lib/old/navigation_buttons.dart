import 'package:flutter/material.dart';
import 'package:practice_learning_app/bottom_nav_bar/profile_view.dart';
import 'package:practice_learning_app/index/home_screen_two.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import '../bottom_nav_bar/your_courses.dart';

class NavigationButtons extends StatefulWidget {
  const NavigationButtons({Key? key}) : super(key: key);

  @override
  State<NavigationButtons> createState() => _NavigationButtonsState();
}

class _NavigationButtonsState extends State<NavigationButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /////PROFILE
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileView()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/blush_icons/profile.png',
                  color: GlobalColors.borderGrey,
                  height: 38,
                  width: 30,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: GlobalColors.borderGrey,
                    fontSize: 14,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        /////HOME
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenTwo()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_filled,
                  color: GlobalColors.borderGrey,
                  size: 30,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: GlobalColors.borderGrey,
                    fontSize: 14,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        /////COURSES
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/blush_icons/courses.png',
                  color: GlobalColors.borderGrey,
                  height: 38,
                  width: 30,
                ),
                Text(
                  'Courses',
                  style: TextStyle(
                    color: GlobalColors.borderGrey,
                    fontSize: 14,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
