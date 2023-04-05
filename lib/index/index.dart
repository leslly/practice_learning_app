import 'package:flutter/material.dart';
import 'package:practice_learning_app/bottom_nav_bar/profile_view.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';
import 'package:practice_learning_app/index/index_provider.dart';
import 'package:practice_learning_app/index/index_screen.dart';
import 'package:provider/provider.dart';

import '../utils/global_colours.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = const [
    ProfileView(),
    IndexScreen(),
    YourCourses()
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<IndexProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
              child: screens[provider.index]
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.index,
            selectedItemColor: GlobalColors.profileBackground,
            onTap: provider.changeIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/blush_icons/profile.png',
                    color: GlobalColors.borderGrey,
                    height: 38,
                    width: 30,
                  ),
                  label: 'Profile'
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    color: GlobalColors.borderGrey,
                    size: 30,
                  ),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/blush_icons/courses.png',
                    color: GlobalColors.borderGrey,
                    height: 38,
                    width: 30,
                  ),
                  label: 'Courses'
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bottomNavigation() {
    return Consumer<IndexProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: const EdgeInsets.only(
              top: 8, bottom: 32, left: 32, right: 32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            border: Border.all(
              color: GlobalColors.borderGrey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                child: InkWell(
                  onTap: () {
                    provider.changeIndex(0);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
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
              Expanded(
                child: InkWell(
                  onTap: () {
                    provider.changeIndex(1);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
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
              Expanded(
                child: InkWell(
                  onTap: () {
                    provider.changeIndex(2);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses()));
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
            ],
          ),
        );
      },
    );
  }
}
