import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/bottom_nav_bar/profile_view.dart';
import 'package:practice_learning_app/settings_functions/email_add_or_change.dart';
import 'package:practice_learning_app/settings_functions/name_change.dart';
import 'package:practice_learning_app/settings_functions/password_change.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool notificationValue = true;
  bool themeValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                      const SizedBox(width: 250),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: GlobalColors.bigTextColorBlack,
                          fontSize: 24,
                          fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Image.asset(
                  'assets/blush_images/cool_kids_on_wheels.png',
                  height: 190,
                  width: 343,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                Container(
                  height: 82,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all( color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8, left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: GlobalColors.profileBorder,
                          ),
                          child:  Icon(
                            Icons.notifications,
                          color: GlobalColors.buttonColorwhite,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: GlobalColors.bigTextColorBlack,
                            fontSize: 20,
                            fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 110),
                       // Widget buildSwitch() => Switch.adaptive
                        notificationSwitch(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 82,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all( color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8, left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: GlobalColors.profileBorder,
                          ),
                          child:  Icon(
                            Icons.brightness_4_sharp,
                            color: GlobalColors.buttonColorwhite,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'App Theme',
                          style: TextStyle(
                            color: GlobalColors.bigTextColorBlack,
                            fontSize: 20,
                            fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 130),
                        themeSwitch(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account information',
                    style: TextStyle(
                      color: GlobalColors.bigTextColorBlack,
                      fontSize: 20,
                      fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                      fontWeight: FontWeight.bold,
                      //fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                /////NAME
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) => NameChange());
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all( color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child:  Icon(
                              Icons.person,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Name',
                            style: TextStyle(
                              color: GlobalColors.bigTextColorBlack,
                              fontSize: 20,
                              fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 200),
                          Container(
                            height: 40,
                            width: 40,
                            color: GlobalColors.buttonColorwhite,
                              child: const Icon(
                                  CupertinoIcons.chevron_up
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                /////EMAIL
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(context: context, isScrollControlled: true, builder: (context) => const EmailAddOrChange());
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all( color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child:  Icon(
                              Icons.mail,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Email',
                            style: TextStyle(
                              color: GlobalColors.bigTextColorBlack,
                              fontSize: 20,
                              fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 203),
                          Container(
                              height: 40,
                              width: 40,
                              color: GlobalColors.buttonColorwhite,
                              child: const Icon(
                                  CupertinoIcons.chevron_up
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                /////PASSWORD
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(context: context, isScrollControlled: true, builder: (context) => const PasswordChange());
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all( color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child:  Icon(
                              Icons.lock_outline,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Password',
                            style: TextStyle(
                              color: GlobalColors.bigTextColorBlack,
                              fontSize: 20,
                              fontFamily: 'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 164),
                          Container(
                              height: 40,
                              width: 40,
                              color: GlobalColors.buttonColorwhite,
                              child: const Icon(
                                  CupertinoIcons.chevron_up
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget notificationSwitch() => Switch.adaptive(
    activeColor: Colors.blueAccent,
    activeTrackColor: Colors.blue.withOpacity(0.4),
    value: notificationValue,
    onChanged: (value) =>  setState(() => this.notificationValue = value),
  );
  Widget themeSwitch() => Switch.adaptive(
    activeColor: Colors.blueAccent,
    activeTrackColor: Colors.blue.withOpacity(0.4),
    value: themeValue,
    onChanged: (value) =>  setState(() => this.themeValue = value),
  );
}
