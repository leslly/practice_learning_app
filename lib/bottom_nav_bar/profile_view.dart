import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/no_payment_method.dart';
import 'package:practice_learning_app/other_screens/course_not_saved.dart';
import 'package:practice_learning_app/other_screens/course_saved.dart';
import 'package:practice_learning_app/other_screens/payment_method_added.dart';
import 'package:practice_learning_app/search/search_not_found.dart';
import 'package:practice_learning_app/other_screens/test/result_fail.dart';
import 'package:practice_learning_app/other_screens/test/result_pass.dart';
import 'package:practice_learning_app/settings_view.dart';
import 'package:practice_learning_app/bottom_nav_bar/your_courses.dart';
import 'package:practice_learning_app/utils/navigation_buttons.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import '../other_screens/test/result_avg.dart';
import 'home_screen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
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
                                CupertinoIcons.back
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 92),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: GlobalColors.bigTextColorBlack,
                          fontSize: 24,
                          fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: GlobalColors.profileBackground,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: GlobalColors.profileBorder),
                    image: const DecorationImage(
                      image: AssetImage('assets/blush_images/cool_kids_bust.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                GlobalButton(
                    nextPage: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => YourCourses() ));;
                    },
                  fontSize: 24,
                  text: 'Your Courses',
                  colorOfButton: GlobalColors.buttonColorwhite,
                  colorOfText: Colors.black,
                ),
                const SizedBox(height: 16),
                GlobalButton(
                    nextPage: () {},
                  text: 'Cart',
                  fontSize: 24,
                  colorOfButton: GlobalColors.buttonColorwhite,
                  colorOfText: Colors.black,
                ),
                const SizedBox(height: 16),
                GlobalButton(
                    nextPage: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResultAvg()));
                    },
                  text: 'Payments',
                  fontSize: 24,
                  colorOfButton: GlobalColors.buttonColorwhite,
                  colorOfText: Colors.black,
                ),
                const SizedBox(height: 16),
                GlobalButton(
                  nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                  },
                  text: 'Settings',
                  fontSize: 24,
                  colorOfButton: GlobalColors.buttonColorwhite,
                  colorOfText: Colors.black,
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik-Medium.ttf',
                      color: GlobalColors.smallTextColorGrey,
                    ),
                  ),
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
