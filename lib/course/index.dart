import 'package:flutter/material.dart';
import 'package:practice_learning_app/bottom_nav_bar/profile_view.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/bottom_nav_bar/home_screen_two.dart';
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
    HomeScreenTwo(),
    YourCourses(),
    // SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexProvider>(
      //The consumer provides change notifications to its listeners. It lets futter know id does not
      //have to rebuild bar widget .
      builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
              child: screens[provider.index]
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: GlobalColors.buttonColorwhite,
            currentIndex: provider.index,
            selectedItemColor: GlobalColors.buttonColorOrange,
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

}
