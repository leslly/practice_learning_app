import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GlobalColors.buttonColorwhite,
      appBar: AppBar(
        backgroundColor: GlobalColors.buttonColorwhite,
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
        centerTitle: true,
        title:  Text(
          'Settings',
          style: TextStyle(
            color: GlobalColors.bigTextColorBlack,
            fontSize: 24,
            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        toolbarHeight: 84,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Image.asset(
                  'assets/blush_images/cool_kids_on_wheels.png',
                  height: 190,
                  width: 343,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                ///// NOTIFICATION
                Container(
                  height: 82,
                  width: 400,
                  decoration: BoxDecoration(
                    color: GlobalColors.buttonColorwhite,
                    border: Border.all(color: GlobalColors.borderGrey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 16, right: 16),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: GlobalColors.profileBorder,
                          ),
                          child: Icon(
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
                            fontFamily:
                                'assets/blush_images/Rubik/Rubik-Medium',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 90),
                        notificationSwitch(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ///// APP THEME
                // Container(
                //   height: 82,
                //   width: 400,
                //   decoration: BoxDecoration(
                //     color: Theme.of(context).colorScheme.surface,
                //     border: Border.all(color: GlobalColors.borderGrey),
                //     borderRadius: BorderRadius.circular(16),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //         top: 8, bottom: 8, left: 16, right: 16),
                //     child: Row(
                //       children: [
                //         Container(
                //           height: 32,
                //           width: 32,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(56),
                //             color: GlobalColors.profileBorder,
                //           ),
                //           child: Icon(
                //             Icons.brightness_4_sharp,
                //             color: GlobalColors.buttonColorwhite,
                //             size: 20,
                //           ),
                //         ),
                //         const SizedBox(width: 12),
                //         const Text(
                //           'App Theme',
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontFamily:
                //                 'assets/blush_images/Rubik/Rubik-Medium',
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         const SizedBox(width: 130),
                //         ThemeSwitch(),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                /////NAME
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: const NameChange())
                    );
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      color: GlobalColors.buttonColorwhite,
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.person,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        const SizedBox(width: 180),
                          Container(
                              height: 40,
                              width: 40,
                              color: GlobalColors.buttonColorwhite,
                              child: const Icon(CupertinoIcons.chevron_up))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                /////EMAIL
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: const EmailAddOrChange()
                        )
                    );
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      color: GlobalColors.buttonColorwhite,
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.mail,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 183),
                          Container(
                              height: 40,
                              width: 40,
                              color: GlobalColors.buttonColorwhite,
                              child: const Icon(CupertinoIcons.chevron_up))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                /////PASSWORD
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: const PasswordChange()
                        )
                    );
                  },
                  child: Container(
                    height: 82,
                    width: 400,
                    decoration: BoxDecoration(
                      color: GlobalColors.buttonColorwhite,
                      border: Border.all(color: GlobalColors.borderGrey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              color: GlobalColors.profileBorder,
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: GlobalColors.buttonColorwhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'assets/blush_images/Rubik/Rubik-Medium',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 140),
                          Container(
                              height: 40,
                              width: 40,
                              color: GlobalColors.buttonColorwhite,
                              child: const Icon(CupertinoIcons.chevron_up)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
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
        onChanged: (value) => setState(() => notificationValue = value),
      );
  // Widget themeSwitch() => Switch.adaptive(
  //       activeColor: Colors.blueAccent,
  //       activeTrackColor: Colors.blue.withOpacity(0.4),
  //       value: themeValue,
  //       onChanged: (value) => setState(() => themeValue = value),
  //     );
}
