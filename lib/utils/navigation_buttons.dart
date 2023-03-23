import 'package:flutter/material.dart';
import 'package:practice_learning_app/profile_view.dart';
import 'package:practice_learning_app/settings_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

import '../courses_view.dart';

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
        /////COURSES
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CoursesPage()));
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
        /////SETTINGS
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/blush_icons/wheel.png',
                  color: GlobalColors.borderGrey,
                  height: 38,
                  width: 30,
                ),
                Text(
                  'Settings',
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
